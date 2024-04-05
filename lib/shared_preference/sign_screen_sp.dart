import 'package:flutter/material.dart';
import 'package:flutternew/shared_preference/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Sign_Screen extends StatefulWidget {
  @override
  State<Sign_Screen> createState() => _Sign_ScreenState();
}

class _Sign_ScreenState extends State<Sign_Screen> {
  final EmailID_controler = TextEditingController();

  final Phonenb_controler = TextEditingController();

  final pass_controler = TextEditingController();

  late SharedPreferences preferences;

  late bool isaNewUser;

  @override
  void initState() {
    ChekTheUserIsAlredyLogedIn();
    super.initState();
  }

  void ChekTheUserIsAlredyLogedIn() async {
    preferences = await SharedPreferences.getInstance();
    isaNewUser = preferences.getBool('newur') ?? true;
    if (isaNewUser == false) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Home_shered_page()));
    }
  }

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
            'WELCOME BUDDY',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Please Fill up',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: EmailID_controler,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueAccent[600],
                  hintText: 'Your Email ID',
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: Phonenb_controler,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueAccent[600],
                  hintText: 'Your Mobile Number',
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  prefixIcon: Icon(
                    Icons.call,
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
              controller: pass_controler,
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
          OutlinedButton(
              style: OutlinedButton.styleFrom(minimumSize: Size(200, 50)),
              onPressed: () async {
                preferences = await SharedPreferences.getInstance();
                String email = EmailID_controler.text;
                String phone = Phonenb_controler.text;
                String pwd = pass_controler.text;


                if (email != "" && pwd != "" && phone != "") {
                  preferences.setString("Email", email);
                  preferences.setString("PHONE", phone);
                  preferences.setString('PWD', pwd);
                  preferences.setBool("newur", false);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home_shered_page()));
                  EmailID_controler.text ="";
                  Phonenb_controler.text ="";
                  pass_controler.text ="";
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("please fill all the fields")));
                }
              },
              child: Text("SIGN UP"))
        ],
      )),
    );
  }
}
