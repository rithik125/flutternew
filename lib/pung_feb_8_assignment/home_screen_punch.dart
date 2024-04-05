import 'package:flutter/material.dart';
import 'package:flutternew/pung_feb_8_assignment/punch_signpagee.dart';

void main() {
  runApp(MaterialApp(
    home: Home_screen_punch(),
  ));
}

class Home_screen_punch extends StatelessWidget {
  const Home_screen_punch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/paint-trippy.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PUNCH',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text('punch· Earn· Repeat',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ],
              ),
            ),
            Expanded(
                child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder_copy,
                          color: Colors.grey,
                          size: 80,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Organized,find,and enjoy your',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          'loyaity card in a more modern',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          'and dynamic way',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 10,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 10,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 10,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                minimumSize: Size(300, 50),
                                side: BorderSide(
                                    width: 3, color: Colors.black)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup_page()));
                            },
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: Size(300, 50),
                                side: BorderSide(
                                    width: 3, color: Colors.black)),
                            onPressed: () {},
                            child: Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
