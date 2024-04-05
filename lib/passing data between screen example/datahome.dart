import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/passing%20data%20between%20screen%20example/staefullpage.dart';
import 'package:flutternew/passing%20data%20between%20screen%20example/stateless.dart';

void main() {
  runApp(MaterialApp(
    home: DataHome(),
  ));
}

class DataHome extends StatelessWidget {
  String name = 'lumenar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Screen_Stateless(name: name,phone: 7356097391)));
                },
                child: Text("to Statelesspage")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen_Statefull(name:name,loca : "thrissur")));
                },
                child: Text("To statefullpage")),
          ],
        ),
      ),
    );
  }
}
