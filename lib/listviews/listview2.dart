import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listview2(),
  ));
}

class listview2 extends StatelessWidget {
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
  var image = [
    "assets/icons/man4.png",
    "assets/icons/man.png",
    "assets/icons/man3.png",
    "assets/icons/man.png",
    "assets/icons/man4.png",
    "assets/icons/man4.png",
    "assets/icons/man4.png",
    "assets/icons/man4.png",
    "assets/icons/man4.png",
    "assets/icons/man4.png"
  ];
  var icons = [
    Icons.message,
    Icons.message,
    Icons.message,
    Icons.message,
    Icons.message,
    Icons.message,
    Icons.message,
    Icons.message,
    Icons.message,
    Icons.message,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview listGenerate"),
      ),
      body: ListView(
        children: List.generate(
            name.length,
            (index) => Card(
                  child: ListTile(
                    leading: Image.asset(image[index]),
                    title: Text(name[index]),
                    trailing: CircleAvatar(backgroundColor: Colors.greenAccent,),
                    subtitle: Icon(icons[index]),
                  ),
                )),
      ),
    );
  }
}
