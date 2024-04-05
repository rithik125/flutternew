import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Expanded1(),
  ));
}

class Expanded1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded1"),
        bottom: AppBar(
          title: Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), hintText: "search"),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.facebook),
                  FaIcon(FontAwesomeIcons.instagram)
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(children: List.generate(10, (index) => Card(
              color: Colors.red,
            )),),
          )
        ],
        
      ),
    );
  }
}
