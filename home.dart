import 'package:flutter/material.dart';
import 'package:flutter_news/helper/data.dart';
import 'package:flutter_news/helper/news.dart';
import 'package:flutter_news/models/article_model.dart';
import 'package:flutter_news/models/category_model.dart'; 

import 'category_news.dart';


class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
   List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> articles = new List<ArticleModel>();
 
    bool _loading =true;

  @override
  void initState() {
    
    super.initState();
     categories = getCategories();
    getNews();
  }
  getNews() async{
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
       _loading = false;
    }); 
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
        [
          Text('Latest'),
          Text('News',style: TextStyle(
            color: Colors.red
          ),)
        ],),
        elevation: 0.0,
        ),
      body: _loading ? Center(
                  child: Container(
            child: CircularProgressIndicator(),
          ),
        ): SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal :16),
          child: Column(children: <Widget>[
          
           // categories
            Container(
              padding: EdgeInsets.symmetric(horizontal :10),
              height: 70,
              child: 
            ListView.builder(
              itemCount:categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return CategoryTile(
                  imageurl: categories[index].imageUrl,
                  categoryName: categories[index].categoryName,
                );
              }
            ),),
                     //blogs
                    
                     Container(
                      
                       padding: EdgeInsets.only(top:16),
                       child: ListView.builder(
                         itemCount: articles.length,
                         shrinkWrap: true,
                         physics: ClampingScrollPhysics(),
                         itemBuilder: (context, index){
                           return BlogTile(
                             imageUrl:  articles[index].urlToImage,
                             title: articles[index].title,
                             desc: articles[index].description,
                             url: articles[index].url,
                       );
                         },
                       ))

          ],)
          ),
        
      ) );
  }
}

class CategoryTile extends StatelessWidget {

  final imageurl, categoryName;
  CategoryTile({this.imageurl,this.categoryName});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => CategoryNews(
            category:categoryName.toLowerCase(),
            )
            )
        );
      },
          child: Container(
        margin: EdgeInsets.only(right:16),
        child: Stack(children: <Widget>[
          ClipRRect(borderRadius: BorderRadius.circular(6),
            child: Image.network(
               imageurl , width: 120, height: 60, fit: BoxFit.cover,)),
        Container(
          alignment: Alignment.center,
          width: 120, height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          color: Colors.black26,
          ),
          
          child: 
        Text(categoryName,style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),)
        ,)
        ],),
      ),
    );
  }
}

