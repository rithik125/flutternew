import 'package:flutter/material.dart';
import 'package:flutternew/fierbase_database/email_passwoed_auth/fierbase_function.dart';
import 'package:flutternew/fierbase_database/email_passwoed_auth/login.dart';

class Fire_Register extends StatelessWidget {
  final email = TextEditingController();
  final passw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration page"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "Enter your email", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: passw,
                decoration: InputDecoration(
                    hintText: "Enter your Password",
                    border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown, shape: StadiumBorder()),
                onPressed: () {
                  String emaill = email.text.trim();
                  String pass = passw.text.trim();
                  FireBaseFunctions()
                      .registerUser(email: emaill, passw: pass)
                      .then((response) {
                    if (response == null) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Fire_Login()));
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(response)));
                    }
                  });
                },
                child: Text("Register Here")),
            SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Fire_Login()));
              },
              child: RichText(
                  text: TextSpan(
                      text: "Already  Registered??",
                      children: [TextSpan(text: "Login Here")])),
            )
          ],
        ),
      ),
    );
  }
}
