import 'package:flutter/material.dart';
import 'package:json/model/SingleArticle.dart';
import 'package:json/Functions/StrapiFunction.dart';

class InformationTest extends StatelessWidget {
  final String articleId;
  const InformationTest({
    Key key,
    this.articleId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(articleId);
    return Scaffold(
        body: FutureBuilder<SingleArticle>(
            future: getSingleArticles(articleId),
            builder: (context, snapshot) {
              SingleArticle article = snapshot.data;
              if (snapshot.hasData) {
                return Center(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Expanded(
                          child: Card(
                            child: ListView(
                              children: [
                                Text("article.title")
                                /*
                                informationWidget(
                                    article.title,
                                    article.description,
                                    // article.image.url,
                                    article.etat,
                                    article.price.toString(),
                                    article.telephone,
                                    article.city)
                                    */
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              return CircularProgressIndicator();
            }));
  }
}
