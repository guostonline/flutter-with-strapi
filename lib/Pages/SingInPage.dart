import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json/Functions/StrapiFunction.dart';
import 'package:json/Pages/AllProductPage.dart';
import 'package:json/Pages/AuthPage.dart';
import 'package:json/main.dart';

TextEditingController email = TextEditingController(text: "salah@gmail.com");
TextEditingController password = TextEditingController(text: "salah123");

class SinginPage extends StatelessWidget {
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
            // height: MediaQuery.of(context).size.height / 2.5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Entree Email et mot de pass.",
                    style: TextStyle(fontSize: 18)),
                TextField(
                  controller: email,
                  // keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
                TextField(
                  controller: password,
                  //  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 20),
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
                    logIn(email.text, password.text).then((value) {
                      if (value == null) {
                        Get.snackbar("Aji ntbadlo",
                            "Verifier votre email ou mot de pass",
                            barBlur: 15,
                            colorText: Colors.white,
                            borderWidth: 1,
                            borderColor: Colors.white,
                            duration: Duration(seconds: 4),
                            backgroundGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.blue, Colors.green]));

                        //Get.to(AuthPage());
                      } else {
                        Get.off(AllProductPage());
                        Get.snackbar("Aji ntbadlo", "Welcome $value");
                      }
                    });
                  },
                ),
                RaisedButton(
                  child: Text(
                    "créer un nouveau compte",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)),
                  onPressed: () {
                    logIn(email.text, password.text).then((value) {
                      if (value == null) {
                        Get.snackbar("Aji ntbadlo",
                            "Verifier votre email ou mot de pass");

                        //  Get.to(MyApp());
                      } else {
                        Get.to(AllProductPage());
                        Get.snackbar("Aji ntbadlo", "Welcome $value");
                      }
                    });
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
