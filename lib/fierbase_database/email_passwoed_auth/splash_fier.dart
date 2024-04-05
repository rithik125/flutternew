import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/fierbase_database/email_passwoed_auth/login.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyC4h5ojCKF_NkzJPQuB-ZrRBl81igJn3GY",
          appId: "1:198226191935:android:0487a918c6d305c82cfa8a",
          messagingSenderId: "",
          projectId: "mygsignin-d7559"));
  runApp(MaterialApp(
    home: Fire_Splash(),
  ));
}

class Fire_Splash extends StatefulWidget {
  const Fire_Splash({super.key});

  @override
  State<Fire_Splash> createState() => _Fier_SplashState();
}

class _Fier_SplashState extends State<Fire_Splash> {
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Fire_Login()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://i0.wp.com/www.printmag.com/wp-content/uploads/2021/02/4cbe8d_f1ed2800a49649848102c68fc5a66e53mv2.gif?fit=476%2C280&ssl=1"))),
      ),
    );
  }
}
