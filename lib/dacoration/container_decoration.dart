 import 'package:flutter/material.dart';
 import 'package:flutter/widgets.dart';

 void main() {
   runApp(MaterialApp(
     home: container1(),
   ));
 }

 class container1 extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       // appBar: AppBar(
       //   title: Text("container decoration"),
       // ),
       body:
         //Center(
        // child:
       Container(
           decoration: BoxDecoration(color: Colors.greenAccent,
            image: DecorationImage(
                 image: AssetImage("assets/images/melody.jpg"),
                 fit: BoxFit.fill),
           ),
           // width: 500,
           // color: Colors.brown,
           // height: 500,
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  Icon(Icons.flare_outlined, size: 200,color: Colors.lightGreen.shade900,),
               ],
             ),

           ),
         ),
      // ),
     );
   }
 }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(home:container2() ,));
// }
// class container2 extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage("assets/images/brooke.jpg"),fit: BoxFit.fill)
//         ),
//       ),
//     );
//   }
// }
