import 'package:flutter/material.dart';
import 'package:flutternew/fierbase_database/email_passwoed_auth/fierbase_function.dart';
import 'package:flutternew/fierbase_database/email_passwoed_auth/home.dart';
import 'package:flutternew/fierbase_database/email_passwoed_auth/register.dart';

void main() {
  runApp(MaterialApp(
    home: Fire_Login(),
  ));
}

class Fire_Login extends StatelessWidget {
  final email = TextEditingController();
  final passw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "Enter your Login", border: OutlineInputBorder()),
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
            MaterialButton(
              child: Text("Login Here"),
              onPressed: () {
                FireBaseFunctions().loginUser(emaill:email.text.trim(),pwd:passw.text.trim()).then((response){
                  if(response == null){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fire_HomeScreen()));
                  }
                });
              },
              shape: StarBorder(),
              color: Colors.orange,
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(style: TextButton.styleFrom(
              backgroundColor: Colors.brown
            ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fire_Register()));
                },
                child: RichText(
                    text: const TextSpan(text: "Not a user??", children: [
                  TextSpan(
                      text: "Register here!!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                ])))
          ],
        ),
      ),
    );
  }
}
