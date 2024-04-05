import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternew/pung_feb_8_assignment/home_screen_punch.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Splash_ph(),
  ));
}

class Splash_ph extends StatefulWidget {
  const Splash_ph({super.key});

  @override
  State<Splash_ph> createState() => _Splash_phState();
}

class _Splash_phState extends State<Splash_ph> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home_screen_punch()));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/pngtree-fibers-color.jpg"),
          fit: BoxFit.fill)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        GradientText(
          'PUNCH',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          gradientType: GradientType.radial,
          colors: [
            Colors.blue,
            Colors.pink,
            Colors.red,
            Colors.orange,
            Colors.yellowAccent,
            Colors.green
          ],
        ),
        RichText(
            text: TextSpan(
                text: 'PUNCH',
                style: TextStyle(fontSize: 17, color: Colors.red,fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: ".",
                  style: TextStyle(fontSize: 17, color: Colors.blue)),
                  TextSpan(
                      text: "Earn",
                      style: TextStyle(fontSize: 17, color: Colors.pink)),
                  TextSpan(
                      text: ".",
                      style: TextStyle(fontSize: 17, color: Colors.blue)),
                  TextSpan(
                      text: "Repeat",
                      style: TextStyle(fontSize: 17, color: Colors.blueAccent)),

            ]))
          ],
        ),
      ),
    ));
  }
}
