import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json/model/CategoriesModel.dart';
import 'package:json/model/Hold.dart';
import 'package:json/model/model.dart';

// fuction to get article from strapi or api server
Future<List<Article>> getArticles() async {
  String url = "https://shielded-scrubland-73184.herokuapp.com/articles";
  http.Response response = await http.get(url);
  String jsonString = response.body;
  List<Article> articles = articleFromJson(jsonString);
  print(jsonString);
  return articles;
}

Future<List<Category>> getCategories() async {
  String url = "https://shielded-scrubland-73184.herokuapp.com/categories";
  var response = await http.get(url);
  String jsonString = response.body;
  List<Category> categories = categoryFromJson(jsonString);
  print(jsonString);
  return categories;
}

Future<List<User>> getHold() async {
  String url = "https://jsonplaceholder.typicode.com/users";
  http.Response response = await http.get(url);
  String jsonString = response.body;
  List<User> categories = userFromJson(jsonString);
  print(jsonString);
  return categories;
}

Future<dynamic> putAuth(String user, String email, String password) async {
  String url =
      "https://shielded-scrubland-73184.herokuapp.com/auth/local/register";
  try {
    http.Response response = await http.post(url,
        body: {"username": user, "email": email, "password": password});
    String jsonString = response.body;
    print(jsonString);
    return jsonString;
  } catch (e) {
    return "oooof";
  }
}
