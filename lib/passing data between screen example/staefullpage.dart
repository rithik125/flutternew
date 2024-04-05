import 'package:flutter/material.dart';

class Screen_Statefull extends StatefulWidget {
  String? name, loca;
   Screen_Statefull({super.key,  this.name,  this.loca});

  @override
  State<Screen_Statefull> createState() => _Screen_StatefullState();
}

class _Screen_StatefullState extends State<Screen_Statefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('${widget.name}${widget.loca}')),);
  }
}