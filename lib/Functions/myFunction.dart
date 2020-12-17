import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json/model/model.dart';


// fuction to get article from strapi or api server
Future<List<Articles>> getArticles() async {
  String url = "https://shielded-scrubland-73184.herokuapp.com/articles";
  http.Response response = await http.get(url);
  String jsonString = response.body;
  List<Articles> articles = articlesFromJson(jsonString);
  return articles;
}
