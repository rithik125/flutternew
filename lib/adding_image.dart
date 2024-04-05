import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Image1(),
  ));
}

class Image1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.green,
        title: Text(
          "My Image",
          style: TextStyle(fontSize: 50,color: Colors.lightGreen),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/brooke.jpg",scale: 20),
            Image.asset("assets/images/brooke.jpg",width: 100,height: 100,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite,color: Colors.lightGreen,size: 30,),
                Icon(Icons.face,color: Colors.greenAccent,size: 30,)
              ],
            ),Text("my working time",style:TextStyle(color: Colors.green,fontSize: 20) ),
          ],
        ),

      ),



    );
  }
}
