import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Ex2.dart';

class Loginpagee extends StatelessWidget {
  final username_ctrl = TextEditingController();
  final password_ctrl = TextEditingController();
  dynamic username = "ambro@12345@gmail.com";
  var password = "1@334455";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(child: Text("LoginPage")),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/open-book.png",
              width: 50,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: username_ctrl,
                decoration: InputDecoration(
                    hintText: "Enter Your username",
                    labelText: "Username",
                    helperText: "Username should be an Email",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: password_ctrl,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  labelText: "PassWord",
                  helperText: "PassWord should contain @ and numbers",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                  onPressed: () {
                    if (username_ctrl.text != "" && password_ctrl.text != "") {
                      if (username_ctrl.text == username &&
                          password_ctrl.text == password) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeScreenn()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.white,
                            content: Text(
                              "enter your corrtect emailid or password",
                              style: TextStyle(color: Colors.black),
                            )));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.white,
                          content: Text(
                            "username and password should not be null",
                            style: TextStyle(color: Colors.black),
                          )));
                    }
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.abel(color: Colors.black),
                  )),
            ),
            TextButton(
                onPressed: () {

                },
                child: Text(
                  "creact a gmail & password",
                  style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 10,
                      fontStyle: FontStyle.italic),
                ))
          ],
        ),
      ),
    );
  }
}
