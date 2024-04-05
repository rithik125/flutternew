
import 'package:flutter/material.dart';
import 'package:flutternew/splashfeb/splashpagewithimage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: SplashWI(),);
  }

}