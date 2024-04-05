import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Firstprogram(),
  ));
}

class Firstprogram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "my firstprogram",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/icons/male.png"),width: 100,height: 100,),
              Image.asset("assets/images/neom.jpg",width: 100,height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.face,
                    color: Colors.red,
                    size: 20,
                  )
                ],
              ),
              Text("my firstprogram", style: TextStyle(color: Colors.red))
            ],
          ),
        ));
  }
}





