import 'package:flutter/material.dart';
import 'package:flutternew/local%20storage/shared_pref/login%20and%20registrationpage%20using%20sharedpreferences/registrationPage.dart';
import 'package:flutternew/local%20storage/shared_pref/login%20and%20registrationpage%20using%20sharedpreferences/sharedhomepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: Login2(),));
}
class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final uname = TextEditingController();
  final passs = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState() {
    check_if_alredy_login();
    super.initState();
  }

  void check_if_alredy_login() async {
    preferences = await SharedPreferences.getInstance();
    newuser = preferences.getBool('newuser') ?? true;
    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SharedHomePage()));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "User Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
            ),
            ElevatedButton(
                onPressed: () => validateandLogin(), child: Text("Login")),
            ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegistrationPage())),
                child: Text("register Here"))
          ],
        ),
      ),
    );
  }



  void validateandLogin() async {
    preferences = await SharedPreferences.getInstance()!;
    String storedusername = preferences.getString('uname')!;
    String storedpassword = preferences.getString('pass')!;

    String username = uname.text;
    String pwd = passs.text;
    preferences.setBool('newuser', false);
    if (storedusername == username && storedpassword == pwd) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SharedHomePage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Invalid username or password")));
    }
  }
}



