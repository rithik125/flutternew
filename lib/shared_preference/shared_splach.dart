import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternew/shared_preference/welcome_page.dart';


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
          MaterialPageRoute(builder: (context) => Welcome_Screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.indigo[900],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/meditating image.png"),
           ),
        ),
      ),
      

    );
  }
}
