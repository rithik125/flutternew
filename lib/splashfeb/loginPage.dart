import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/splashfeb/signuppage.dart';

class loginP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blueGrey,
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Login to your account",
                      style: TextStyle(fontSize: 17, color: Colors.blueGrey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "uname",
                            hintText: 'Enter your username'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "password",
                            hintText: 'password'),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.black,
                      minWidth: 100,
                      height: 40,
                      shape: StadiumBorder(),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // ElevatedButton(
                    //     onPressed: () {},
                    //     style:
                    //         ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    //     child: Text("Login")),

                    RichText(
                        text: TextSpan(
                            text: "not a user?",
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: "SignUp",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => SignUpEx()))
                                    },
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ))
                        ])),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset(
                  "assets/images/What_is_Flutter_.png",
                 fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
