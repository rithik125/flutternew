import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Listview3()));
}

class Listview3 extends StatelessWidget {
  var name = [
    "arun",
    "arjun",
    "kichu",
    "subin",
    "annama",
    "kishan",
    "althaf",
    "akashy",
    "nirangen",
    "arun",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Bilder"),
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) =>
              Card(
                child: Text(name[index]),
              )),
    );
  }
}



