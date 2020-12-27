import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:json/model/CategoriesModel.dart';
import 'package:json/model/Hold.dart';
import 'package:json/model/SingleArticle.dart';
import 'package:json/model/model.dart';

// fuction to get article from strapi or api server
Future<List<Article>> getArticles() async {
  String url = "https://shielded-scrubland-73184.herokuapp.com/articles";
  http.Response response = await http.post(url);
  int responceCode = response.statusCode;
  String jsonString = response.body;
  List<Article> articles = articleFromJson(jsonString);
  print(responceCode);
  return articles;
}

Future<SingleArticle> getSingleArticles(String articleID) async {
  String url =
      "https://shielded-scrubland-73184.herokuapp.com/articles/$articleID";
  http.Response response = await http.get(url);
  String jsonString = response.body;
  SingleArticle articles = singleArticleFromJson(jsonString);
  print("chakib function " + articles.id + " " + articles.title);
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

Future<String> logIn(String email, String password) async {
  String url = "https://shielded-scrubland-73184.herokuapp.com/auth/local";
  try {
    http.Response response =
        await http.post(url, body: {"identifier": email, "password": password});
    String jsonString = response.body;
    Map test = jsonDecode(jsonString);
    print(test["jwt"]);
    //  GetStorage storage = GetStorage();
    // storage.write("jwt", test["jwt"]);
    return test["user"]["username"];
  } catch (e) {
    return null;
  }
}

Future<dynamic> postAnArticle(String articleId, int price) async {
  String url = "https://shielded-scrubland-73184.herokuapp.com/articles";
  http.Response response = await http.put(url, headers: {
    "Authorization":
        "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVmZTQ1YjM5ZDIzM2MxMDAxNzIwZTc3OCIsImlhdCI6MTYwODg5OTE4OCwiZXhwIjoxNjExNDkxMTg4fQ.FcIAea-0h7LBKI1zq1gczycg1bjAe9JPYKjfO799mCg"
  }, body: {
    "title": "super cool",
    "Description": "super cool",
    "price": price
  });
  String jsonString = response.body;
  // Map test = jsonDecode(jsonString);
  print(jsonString);

  return jsonString;
}
