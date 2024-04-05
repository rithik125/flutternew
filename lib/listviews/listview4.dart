import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview4(),
  ));
}

class Listview4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => Card(
          color: Colors.yellow,
          child: Image.asset("assets/icons/_settings_setup_icon.png"),
        ),
        separatorBuilder: (context, index) {
          if (index % 4 == 0) {
            return Card(
              color: Colors.red,
              child: Text("advetisement"),
            );
          }
          return SizedBox(
            height: 5,
          );
        },
        itemCount: 15,
      ),
    );
  }
}
