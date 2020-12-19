import 'package:flutter/material.dart';
import 'package:json/Functions/myFunction.dart';

TextEditingController txtUser = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController textPassword = TextEditingController();

class AuthPage extends StatelessWidget {
  const AuthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text("Please Sing Up"),
            TextField(
              controller: txtUser,
              decoration: InputDecoration(labelText: "User name"),
            ),
            TextField(
              controller: txtEmail,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: textPassword,
              decoration: InputDecoration(labelText: "Password"),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    child: Text(
                      "Sing Up",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      print(txtUser.toString());
                      print(txtEmail.text.toString());
                      print(textPassword.text.toString());
                      putAuth(txtUser.text, txtEmail.text, textPassword.text);
                    })),
          ],
        ),
      ),
    )));
  }
}
