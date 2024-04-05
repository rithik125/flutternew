import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
void main(){
  runApp(MaterialApp(home: MyAppContainer(),));
}
class MyAppContainer extends StatelessWidget {
  const MyAppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(highlightColor: Colors.white,
      baseColor: Colors.grey,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: AspectRatio(aspectRatio: 16/9,child: Container(color: Colors.grey,),),
            ),
          ),

        ],
      ),
    );
  }
}
