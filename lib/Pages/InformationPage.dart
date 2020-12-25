import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:json/Widgets/InformaitonWidgets.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            informationWidget(
                title: article.title,
                desc: article.description,
                dateAchat: article.dateAchat,
                etat: article.etat,
                image: article.image.url,
                priceAchat: article.price.toString(),
                city: article.city,
                phone: article.telephone),
            Expanded(
              child: ListView.builder(
                  itemCount: article.articles.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(article.articles[index].image.url),
                      ),
                      title: Text(article.articles[index].title),
                      subtitle: Text(
                          "Prix d'achat est ${article.articles[index].price} dh"),
                    );
                  }),
            )
          ],
        ),
      ),
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
