import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'Functions/myFunction.dart';
import 'model/model.dart';

void main() => runApp(MyApp());

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
          child: FutureBuilder<List<Articles>>(
            future: getArticles(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      Articles item = snapshot.data[index];
                      return ListTile(
                        title: Text(item.titile),
                        trailing: Text(item.publishedAt.toString()),
                      );
                    });
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