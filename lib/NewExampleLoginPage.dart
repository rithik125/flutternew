import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/home2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginpage(),
  ));
}

class Loginpage extends StatelessWidget {
  String username ="";
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: usernamecontroller,
                decoration: InputDecoration(
                    label: Text("Username"),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(padding: const EdgeInsets.all(10),
            child: TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                label: Text("Password"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              String
              username = usernamecontroller.text;
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepagee(username:username)));
            }, child: Text("login",style: TextStyle(color: Colors.red),))
          ],
        ),
      ),
    );
  }
}