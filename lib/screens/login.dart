import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/screens/home.dart';
import 'package:flutternew/screens/signup.dart';
import 'package:google_fonts/google_fonts.dart';

// void main(){
//   runApp(MaterialApp(home: login1(),));
// }

class login1 extends StatelessWidget {
  //for featching values from textfield
  final uname_ctrl = TextEditingController();
  final passwrd_ctrl = TextEditingController();
  String username = "ambro135@gmail.com";
  String password = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/icons/head_icon.png",
            width: 40,
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: uname_ctrl,
              decoration: InputDecoration(
                  hintText: "username",
                  helperText: "user name should be a email",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.alternate_email_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: passwrd_ctrl,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  hintText: "password",
                  labelText: "password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black26,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.black26,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (uname_ctrl.text != "" && passwrd_ctrl.text != "") {
                  if (uname_ctrl.text == username &&
                      passwrd_ctrl.text == password) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("username/password is incorrect")));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content:
                          Text("password and username should not be null")));
                }
              },
              child: Text(
                "Login",
                style: GoogleFonts.rubikBubbles(
                    color: Colors.cyanAccent,
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              )),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Signup()));
              },
              child: Text(
                "Not a user...Register here",
                style: GoogleFonts.rubikBubbles(
                    color: Colors.cyanAccent,
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              ))
        ],
      ),
    );
  }
}
