import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json/Pages/AuthPage.dart';
import 'package:json/model/CategoriesModel.dart';

import 'Functions/myFunction.dart';
import 'Pages/InformationPage.dart';
import 'model/model.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Future<Articles> futureAlbum;

  @override
  void initState() {
    super.initState();
    getArticles();
    // Articles futureAlbum = Articles();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<List<Article>>(
            future: getArticles(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount:
                              snapshot.data == null ? 0 : snapshot.data.length,
                          itemBuilder: (context, index) {
                            Article item = snapshot.data[index];

                            return InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InformationPage(
                                          categories: item.articles,
                                          image: item.image.url))),
                              child: ListTile(
                                  title: Text(item.title),
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(item.image.url),
                                  ),
                                  subtitle: Text(item.price.toString())),
                            );
                          }),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
