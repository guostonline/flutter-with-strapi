import 'package:flutter/material.dart';
import 'package:json/Functions/StrapiFunction.dart';

class AddProductPage extends StatefulWidget {
  AddProductPage({Key key}) : super(key: key);

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RaisedButton(
        child: Text("super"),
        onPressed: () => postAnArticle("5fe31cd96d79f90017b44d43")
            .then((value) => print(value)),
      )),
    );
  }
}
