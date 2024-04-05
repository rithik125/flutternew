import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: examplesliver(),
  ));
}

class examplesliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor:Colors.green,
            floating: true,
            pinned: true,
            title: Text("FARMERS FRESH ZONE",
              style: GoogleFonts.cabin(),),
            bottom: AppBar(backgroundColor: Colors.green,
              title: Container(
                height: 20,
                width: double.infinity,
                color: Colors.white,
                child: TextField(decoration: InputDecoration(hintText: "",
                prefixIcon:Icon(Icons.search)),),
              ),
            ),
          )
        ],
      )),
    );
  }
}
