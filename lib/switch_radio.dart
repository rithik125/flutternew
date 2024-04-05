import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: switch_Radio()));
}

class switch_Radio extends StatefulWidget {
  bool result = false;


  @override
  State<switch_Radio> createState() => _switch_RadioState();
}

class _switch_RadioState extends State<switch_Radio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Switch Radio"),
      ),
      body: Switch(value: false, onChanged: (bool value){}),
    );
  }
}
