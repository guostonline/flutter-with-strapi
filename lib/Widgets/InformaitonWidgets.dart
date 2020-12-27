import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget informationWidget({
  String title,
  String catergorie,
  String desc,
  String image,
  String dateAchat,
  String priceAchat,
  String etat,
  String city,
  String phone,
}) {
  return Card(
    elevation: 5,
    child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              child: Image.network(image, fit: BoxFit.cover)),
          informationRow("Produit", title),
          informationRow("Categorie", catergorie),
          informationRow("Date Achat", dateAchat),
          informationRow("Prix d'achat", priceAchat),
          Divider(
            height: 5,
            indent: 5,
          ),
          descContainer(desc),
          informationRow("Etat", etat),
          informationRow("Ville", city),
          informationRow("Téléphone", phone),
        ],
      ),
    ),
  );
}

Container informationRow(String title, String desc) {
  return Container(
    child: DefaultTextStyle(
      style: GoogleFonts.raleway(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            desc,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          )
        ],
      ),
    ),
  );
}

Container descContainer(String text) {
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(color: Colors.yellow.withOpacity(0.5)),
    width: double.infinity,
    height: 50,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Descprition..", style: TextStyle(fontWeight: FontWeight.bold)),
        AutoSizeText(text),
      ],
    ),
  );
}
