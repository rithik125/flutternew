import 'package:flutter/material.dart';
import 'package:flutternew/library_App/main_screen/main_screen.dart';
import 'package:flutternew/library_App/registration_page.dart';

class Loginpage1 extends StatefulWidget {
  const Loginpage1({super.key});

  @override
  State<Loginpage1> createState() => _Loginpage1State();
}

class _Loginpage1State extends State<Loginpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFEFEBE9),
                Color(0xFFD7CCC8),
                Color(0xFFBCAAA4),
                Color(0xFFA1887F),
                Color(0xFF8D6E63),
                Color(0xFF795548),
                Color(0xFF3E2323)
              ],
            )),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                          fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.brown[600],
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.brown[100]),
                              prefixIcon: Icon(
                                Icons.alternate_email,
                                color: Colors.brown[100],
                                size: 18,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.brown[600],
                              border: InputBorder.none,
                              hintText: "PassWord",
                              hintStyle: TextStyle(color: Colors.brown[100]),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.brown[100],
                                size: 18,
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(color: Colors.brown[700]),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => library_main_screen()));
                          },
                          child: Text("Sign In")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New To this App ?'),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => registration_page()));
                              },
                              child: Text(
                                "Register Here",
                                style: TextStyle(color: Colors.black),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.brown,
                              child: Image(
                                  image: AssetImage(
                                      "assets/SvgPicture/google_logo_icon_.png")),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.brown,
                            child: Image(
                                image: AssetImage(
                                    "assets/SvgPicture/Facebook-icon.png")),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
