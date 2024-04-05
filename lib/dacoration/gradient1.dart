import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gradients(),
  ));
}

class gradients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("gradients1"),
      // ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage("assets/images/warren.jpg")),
            gradient: LinearGradient(
                colors: [Colors.red, Colors.blue, Colors.yellow, Colors.green],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft)
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/annie.jpg"),
            Text("my creation",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,color: Colors.brown),)
          ],
        ),
      ),
    );
  }
}
