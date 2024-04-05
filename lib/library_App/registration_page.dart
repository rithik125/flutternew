import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registration_page extends StatefulWidget {
  const registration_page({super.key});

  @override
  State<registration_page> createState() => _registration_pageState();
}

class _registration_pageState extends State<registration_page> {
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

            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [SizedBox(height: 30,),
                        Image(
                          image: AssetImage(
                            "assets/SvgPicture/PNG-BOOKS1.png",
                          ),
                          width: 80,
                          height: 80,
                        ),
                        Text("Registration Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.brown[800]),),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.brown[600],
                                    border: InputBorder.none,
                                    hintText: " Your Name",
                                    hintStyle:
                                        TextStyle(color: Colors.brown[100]),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.brown[100],
                                      size: 18,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.brown[600],
                                    border: InputBorder.none,
                                    hintText: "Phone number",
                                    hintStyle:
                                        TextStyle(color: Colors.brown[100]),
                                    prefixIcon: Icon(
                                      Icons.phone,
                                      color: Colors.brown[100],
                                      size: 18,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.brown[600],
                                    border: InputBorder.none,
                                    hintText: "EmailID",
                                    hintStyle:
                                        TextStyle(color: Colors.brown[100]),
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      color: Colors.brown[100],
                                      size: 18,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.brown),
                                child: Text("Register"))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
