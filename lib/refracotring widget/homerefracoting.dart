import 'package:flutter/material.dart';
import 'package:flutternew/refracotring%20widget/widget/mywidget.dart';

void main() {
  runApp(MaterialApp(
    home: RefratoringHome(),
  ));
}

class RefratoringHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refratoring Widget"),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
          itemCount: 2,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index) {
            Produtewidget(
                myimage: const AssetImage("assets/images/joshua-earle.jpg"),
                name: "Books",
                bgcolor: Colors.black,
                price: "\$200",
            );
          }),
    );
  }
}
