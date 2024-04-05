import 'package:flutter/material.dart';
import 'package:flutternew/library_App/widgets/Ex/containerr.dart';


void main() {
  runApp(MaterialApp(
    home: HomeScreenn(),
  ));
}

class HomeScreenn extends StatelessWidget {
  const HomeScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            MyAppContainer(),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
                SizedBox(width: 3,),
                Container(height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                  ),
                ),
                SizedBox(width: 3,),
                Container(height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                  ),
                ),
                SizedBox(width: 3,),
                Container(height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                  ),
                ),
                SizedBox(width: 3,),
                Container(height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                  ),
                )
              ],
            )
          ],
        ));
  }
}
