import 'package:flutter_news/models/category_model.dart';

List<CategoryModel> getCategories(){

List<CategoryModel> category = new List<CategoryModel>();
CategoryModel categoryModel = new CategoryModel();

/*1*/
categoryModel.categoryName = "Business";
categoryModel.imageUrl = "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80";
category.add(categoryModel);

//2
categoryModel = new CategoryModel();
categoryModel.categoryName = "Sports";
categoryModel.imageUrl = "https://images.unsplash.com/photo-1471295253337-3ceaaedca402?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=748&q=80";
category.add(categoryModel);

//3
categoryModel = new CategoryModel();
categoryModel.categoryName = "Health";
categoryModel.imageUrl = "https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80";
category.add(categoryModel);

//4
categoryModel = new CategoryModel();
categoryModel.categoryName = "Technology";
categoryModel.imageUrl = "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80";
category.add(categoryModel);

//5
categoryModel = new CategoryModel();
categoryModel.categoryName = "Science";
categoryModel.imageUrl = "https://images.unsplash.com/photo-1532094349884-543bc11b234d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80";
category.add(categoryModel);

//6
categoryModel = new CategoryModel();
categoryModel.categoryName = "Entertainment";
categoryModel.imageUrl = "https://images.unsplash.com/photo-1446241902541-b3d11d8bcc2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80";
category.add(categoryModel);

return category;

}
