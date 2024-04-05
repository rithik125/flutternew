import 'package:flutter/material.dart';

class Screen_Stateless extends StatelessWidget {
  String? name;
  int phone;

  Screen_Stateless({super.key, this.name, required this.phone});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to $name contact $phone' ,
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
