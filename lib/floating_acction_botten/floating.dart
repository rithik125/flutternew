import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: floting(),
  ));
}

class floting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text("Alert dialog"),
                      content: Text("Alert"),
                      actions: [
                        IconButton(onPressed: (){}, icon:Text(''))],
                    ));
          }),
    );
  }
}
