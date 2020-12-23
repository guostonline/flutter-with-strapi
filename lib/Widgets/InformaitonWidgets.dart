import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Container informationWidget(
  String title,
  String desc,
  String image,
  String dateAchat,
  String priceAchat,
  String etat,
  String city,
) {
  return Container(
    child: Column(
      children: [
        Image.network(image, fit: BoxFit.cover),
        informationRow("Produit", title),
        informationRow("Date Achat", dateAchat),
        informationRow("Prix d'achat", priceAchat),
        Text("Discription"),
        Text(desc),
        informationRow("Etat", etat),
        informationRow("Ville", city),
      ],
    ),
  );
}

Container informationRow(String title, String desc) {
  return Container(
    child: DefaultTextStyle(
      style: GoogleFonts.abel(fontSize: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(desc)],
      ),
    ),
  );
}
