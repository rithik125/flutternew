import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Atm card"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMQUMBpFP92MWkJXCJyzk5EFM0Gjs0oAOQuxXRvMhtzQ&s"))),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Text(
                "Visa Gold",
                style: GoogleFonts.jost(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 20,
              top: 45,
              child: Row(
                children: [
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: Icon(
                      Icons.sim_card,
                      color: Colors.yellow,
                      size: 50,
                    ),
                  ),
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: Icon(
                      Icons.wifi,
                      color: Colors.green,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 95,
                left: 24,
                child: Text(
                  "2000 4499 3300 2299",
                  style: GoogleFonts.anton(fontSize: 20, color: Colors.grey),
                )),
            Positioned(
                top: 120,
                left: 24,
                child: Text(
                  "4100",
                  style: GoogleFonts.anton(fontSize: 10, color: Colors.black),
                )),
            Positioned(left: 100,top: 190,
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "GOOO",
                        style:
                            GoogleFonts.scada(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "THRU",
                        style:
                            GoogleFonts.scada(fontSize: 10, color: Colors.white),
                      ),

                    ],
                  ),
                  SizedBox(width: 10,height: 12,),
                  Text("12/20",style: GoogleFonts.frederickaTheGreat(fontSize: 20,color: Colors.white),)
                ],
              ),
            ),
            Positioned(right: 300,top: 210,
                child: Text("RITHIK VR")),
            Positioned(left: 290,top: 200,
                child: Column(
                  children: [
                    Text("VISA",style: GoogleFonts.rubikMaze(fontSize: 30,color: Colors.white),),
                    Text("Gold",style: GoogleFonts.abel(fontSize: 10,color: Colors.white),)
                  ],
                ),)
          ],
        ),
      ),
    );
  }
}
