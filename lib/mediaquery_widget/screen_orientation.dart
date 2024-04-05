import 'package:flutter/material.dart';
import 'package:flutternew/NewExampleLoginPage.dart';
import 'package:flutternew/mediaquery_widget/largeScreen.dart';
import 'package:flutternew/mediaquery_widget/smallScreen.dart';
void main(){
  runApp(MyPage());
}
class MyPage extends StatelessWidget {

  @override

  Widget build(BuildContext context){
    bool isDarkThem = MediaQuery.of(context).platformBrightness==Brightness.dark;
    return MaterialApp(
      theme:isDarkThem? ThemeData.light():ThemeData.dark(),
      home: Screen(),);
}
}

class Screen extends StatelessWidget {
  var orientation, height, width,screensize;
  bool? isLargeScreen;

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    screensize =MediaQuery.of(context).size;
    isLargeScreen = width>600;
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen orientation"),backgroundColor: Colors.red,
        ),
        body:  isLargeScreen == true?LargeScreen():SmallScreen(),
        //body: orientation == Orientation.portrait
        // body:isLargeScreen == true
        //     ? Container(
        //         color: Colors.blue,
        //         height: height / 2,
        //         width: width / 2,
        //       )
        //     : Container(
        //         color: Colors.yellow,
        //         height: height / 2,
        //         width: width / 2,
        //       )
    );
  }
}
