import 'dart:convert';

import 'package:flutter_news/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {

  List<ArticleModel> news = [];
Future <void> getNews() async{

String url ="http://newsapi.org/v2/top-headlines?country=us&apiKey=aa694858f5254a8da490498ff76cbd20";

var response = await http.get(url);

var jsonData = jsonDecode(response.body);


if(jsonData['status'] == "ok"){
  jsonData["articles"].forEach((element){

    if (element["urlToImage"] != null && element['description'] != null) {
      
      ArticleModel articleModel = ArticleModel(
        author : element["author"],
        description: element['description'],
        url: element["url"],
        urlToImage: element['urlToImage'],
        title: element["title"],
        content: element['content'],
       
  );

      news.add(articleModel);
  }
  });
}
}
}

class CategoryNewsClass {

  List<ArticleModel> news = [];
Future <void> getNews(String category) async{

String url ="http://newsapi.org/v2/top-headlines?category=$category&country=us&category=business&apiKey=aa694858f5254a8da490498ff76cbd20";

var response = await http.get(url);

var jsonData = jsonDecode(response.body);


if(jsonData['status'] == "ok"){
  jsonData["articles"].forEach((element){

    if (element["urlToImage"] != null && element['description'] != null) {
      
      ArticleModel articleModel = ArticleModel(
        author : element["author"],
        description: element['description'],
        url: element["url"],
        urlToImage: element['urlToImage'],
        title: element["title"],
        content: element['content'],
       
  );

      news.add(articleModel);
  }
  });
}
}
}

