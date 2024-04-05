import 'package:flutter/material.dart';
import 'package:flutternew/shared_preference/login_screen_sp.dart';
import 'package:flutternew/shared_preference/sign_screen_sp.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/meditating image.png"))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hi There !!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'to keep connected with UB Please set your option',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 100,),
              ElevatedButton(style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50)
              )
              ,onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_screen()));
                  }, child: Text("LOG IN")),
              SizedBox(height: 20,),
              ElevatedButton(style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50)
              ),onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sign_Screen()));
              }, child: Text("SIGN IN")),
            SizedBox(height: 28,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              Icon(Icons.facebook),
              Icon(Icons.facebook),
              Icon(Icons.facebook),

            ],)
              
            ],
          ),
        ));
  }
}
