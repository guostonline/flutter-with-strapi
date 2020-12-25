import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json/Functions/StrapiFunction.dart';
import 'package:json/Pages/AddProductPage.dart';
import 'package:json/Pages/InformationPage.dart';
import 'package:json/model/model.dart';

class AllProductPage extends StatefulWidget {
  AllProductPage({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<AllProductPage> {
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(AddProductPage());
          },
          child: Icon(Icons.add),
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
                              onTap: () {
                                print(item.title);
                                Get.to(InformationPage(
                                  article: item,
                                ));
                              },
                              child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(item.image.url),
                                  ),
                                  title: Text(item.title),
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
