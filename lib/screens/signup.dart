import 'package:flutter/material.dart';
import 'package:flutternew/screens/home.dart';

void main() {
  runApp(MaterialApp(
    home: Signup(),
  ));
}

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool showpassword = true;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: Form(
          key: formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/warren.jpg",
                width: 50,
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@')) {
                      return "Enter aVaild email id";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    obscureText: showpassword,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        labelText: "password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showpassword) {
                                  showpassword = false;
                                } else {
                                  showpassword = true;
                                }
                              });
                            },
                            icon: Icon(showpassword == true
                                ? Icons.visibility
                                : Icons.visibility_off))),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "password should not be empty or length > 6";
                      } else
                        return null;
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    var isVaild = formkey.currentState!.validate();
                    if (isVaild == true) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  child: Text("Signup"))
            ],
          )),
    );
  }
}
