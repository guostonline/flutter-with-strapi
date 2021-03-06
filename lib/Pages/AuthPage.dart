import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json/Functions/StrapiFunction.dart';
import 'package:json/Pages/SingInPage.dart';
import 'package:json/main.dart';

import 'AllProductPage.dart';

TextEditingController txtUser = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtPassword = TextEditingController();

class AuthPage extends StatelessWidget {
  const AuthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width * .9,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Entree votre nom, Email et mot de pass.",
                    style: TextStyle(fontSize: 18)),
                TextField(
                  controller: txtUser,
                  // keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Votre nom",
                  ),
                ),
                TextField(
                  controller: txtEmail,
                  // keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
                TextField(
                  controller: txtPassword,
                  //  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  child: Text(
                    "Sing In",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)),
                  onPressed: () {
                    putAuth(txtUser.text, txtEmail.text, txtPassword.text)
                        .then((value) {
                      if (value == null) {
                        Get.snackbar("Aji ntbadlo",
                            "il-a un erreur vérifier votre connexion!");
                      } else {
                        Get.off(AllProductPage());
                        Get.snackbar("Aji ntbadlo", "Welcome $value");
                      }
                    });
                  },
                ),
                RaisedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)),
                  onPressed: () {
                    Get.to(SinginPage());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
