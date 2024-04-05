import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternew/library_App/signup_page.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashLibrary(),
  ));
}

class SplashLibrary extends StatefulWidget {
  const SplashLibrary({super.key});

  @override
  State<SplashLibrary> createState() => _SplashLibraryState();
}

class _SplashLibraryState extends State<SplashLibrary> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Loginpage1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.brown.shade800, Colors.white])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/SvgPicture/PNG-BOOKS1.png",
                height: 400,
                width: 400,
              ),
              GradientText('WELCOME TO THE DAR EL-KOTOB',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  colors: [Colors.brown, Colors.white])
            ],
          ),
        ));
  }
}
