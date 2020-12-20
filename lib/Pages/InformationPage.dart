import 'package:flutter/material.dart';

import 'package:json/model/model.dart';

class InformationPage extends StatelessWidget {
  final List<ArticleElement> categories;
  final String image;
  const InformationPage({
    Key key,
    this.categories,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Card(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  ArticleElement item = categories[index];
                  return Column(
                    children: [
                      ListTile(
                          title: Text(item.title),
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(item.image.url))),
                    ],
                  );
                }),
          ),
        ],
      )),
    );
  }
}
