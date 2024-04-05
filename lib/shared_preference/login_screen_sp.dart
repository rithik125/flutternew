import 'package:flutter/material.dart';
import 'package:flutternew/shared_preference/sign_screen_sp.dart';


class Login_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/meditating image.png"))),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'WELCOME BACK !!',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'to keep connected with UB Please set your option',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueAccent[600],
                  hintText: 'Your name',
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueAccent[600],
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
              onPressed: () {},
              child: Text('LOGIN')),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "dont have account ?",
                  style: TextStyle(color: Colors.white70),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Sign_Screen()));
                    },
                    child: Text('Sign in'))
              ],
            ),
          )
        ],
      )
      ),
    );
  }
}
