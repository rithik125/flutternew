

import 'package:flutter/material.dart';
import 'package:flutternew/emergency_Asssistance_assignment/callerpage_contact.dart';

import 'navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: get_startess(),
    routes: {
      'callerPage' : (context)=>CallerPage()
    },
  ));
}

class get_startess extends StatelessWidget {
  const get_startess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)),
                image: DecorationImage(
                    image: AssetImage('assets/images/Image4.jpeg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'EMERGENCY ',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'ASSISTANCE FOE ',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'CUSTOMERS ',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Lorem ipsum dolo sit amet, consectetur',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Text(
            'adipiscing elit,sed do eiusmod',
            style: TextStyle(color: Colors.grey,fontSize: 15),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => HomePageEUI()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Let get started',style: TextStyle(fontSize: 20),),SizedBox(width: 5,),
                          Icon(Icons.arrow_forward)
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
