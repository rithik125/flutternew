import 'package:flutter/material.dart';
import 'package:flutternew/fierbase_database/email_passwoed_auth/login.dart';

class Fire_HomeScreen extends StatelessWidget {
  const Fire_HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Fire_HomePage"),
    ),body: Center(child: ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fire_Login()));
    }, child:Text("LogOut")),),
    );
  }
}
