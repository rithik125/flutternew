import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternew/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
 // const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => login1()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/trafico.jpg"),
                fit: BoxFit.fill
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Image.asset("assets/icons/green lantern.png",width: 100,height: 100,),
              Text("way out of heavy traffic",style: GoogleFonts.rubik(color: Colors.white,fontSize: 30,fontStyle: FontStyle.italic),)
            ]
              
          ),
        ),
      ),
    );
  }
}
