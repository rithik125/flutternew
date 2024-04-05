import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginPage.dart';

class SplashWI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginP()));
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, Colors.blue, Colors.black87])
            // image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: AssetImage("assets/images/sharedpreference.jpeg"))
            ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/icons/marvel.png")),
              SizedBox(
                height: 20,
              ),
              Text(
                "Avenger",
                style: GoogleFonts.laBelleAurore(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
