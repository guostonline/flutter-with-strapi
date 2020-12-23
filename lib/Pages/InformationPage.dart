import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:json/model/model.dart';

class InformationPage extends StatelessWidget {
//final List<ArticleElement> article;
  final Article article;

  const InformationPage({
    Key key,
    this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: article.articles.length,
                itemBuilder: (context, index) {
                  var item = article.articles[index];
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          _showMaterialDialog(
                              context,
                              item.title,
                              item.image.url,
                              item.title,
                              item.description,
                              item.createdAt.toString());
                        },
                        child: ListTile(
                            title: Text(item.title),
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(item.image.url))),
                      ),
                    ],
                  );
                }),
          ),
        ],
      )),
    );
  }

  _showMaterialDialog(context, String title, String image, String produit,
      String name, String date) {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              scrollable: true,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              title: Text(title),
              content: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Image.network(image),
                    myWidget(produit, name, date)
                  ],
                ),
                // margin: EdgeInsets.all(5),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text('Close me!'),
                  onPressed: () {},
                )
              ],
            ));
  }

  Container myWidget(String produit, String name, String date) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Nom de produit"),
              AutoSizeText(produit),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Description "),
              Spacer(),
              Expanded(
                child: AutoSizeText(
                  name,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Date"),
              AutoSizeText(date),
            ],
          ),
        ],
      ),
    );
  }
}
