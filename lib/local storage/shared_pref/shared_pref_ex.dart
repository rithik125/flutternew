import 'package:flutter/material.dart';
import 'package:flutternew/local%20storage/shared_pref/shared_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Shared_Login(),
  ));
}

class Shared_Login extends StatefulWidget {
  @override
  State<Shared_Login> createState() => _Shared_LoginState();
}

class _Shared_LoginState extends State<Shared_Login> {
  final uname_controller = TextEditingController();
  final upass_controller = TextEditingController();
  late SharedPreferences preferences;
  late bool isANewUser;
  @override
  void initState() {
   checkTheUserIsAlreadyLoggedIn();
    super.initState();
  }
void  checkTheUserIsAlreadyLoggedIn() async{
preferences = await SharedPreferences.getInstance();
isANewUser = preferences.getBool("newUser")??true;
//?? - is first statement is null second statement will execute
if(isANewUser= false){
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Home_shared()));
}
}
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Using Shared"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login page",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: uname_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Username"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: upass_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "passwored"),
              ),
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () async {
                  preferences = await SharedPreferences.getInstance();

                  String email = uname_controller.text;
                  String pwd = upass_controller.text;

                  if (email != "" && pwd != "") {

                    preferences.setString("Email", email);
                    preferences.setString("Pass", pwd);
                    preferences.setBool("newuser",false );

                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Home_shared()));
                    uname_controller.text ="";
                    upass_controller.text ="";
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("please fill all the fields")));
                  }
                },
                child: Text("Login page"))
          ],
        ),
      ),
    );
  }
}
