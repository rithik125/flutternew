import 'package:flutter/material.dart';
import 'package:flutternew/local%20storage/shared_pref/simple%20login%20using%20shared_preferences/shared-home.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: Login_Page_shared(),));
}
class Login_Page_shared extends StatefulWidget {
  const Login_Page_shared({super.key});

  @override
  State<Login_Page_shared> createState() => _Login_Page_sharedState();
}

class _Login_Page_sharedState extends State<Login_Page_shared> {
  final email = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState() {
    check_if_already_login();
    super.initState();
  }

  void check_if_already_login() async {
    preferences = await SharedPreferences.getInstance();
    newuser = preferences.getBool('newuser') ?? true;
    if (newuser == false) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SharedHome()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN PAGE'),
      ),
      body: Center(
        child: Column(
          children: [Padding(padding: EdgeInsets.all(15.0),
          child: TextField(decoration:
          InputDecoration(border:
          OutlineInputBorder(),hintText: "email"),
          controller: email,),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration:
              InputDecoration(border:
              OutlineInputBorder(),hintText: 'password'),
                controller:pwd ,),
            ),
            ElevatedButton(onPressed: () async{
              String username = email.text;
              String password = pwd.text;
              if (username!=''&& password!=''){
                preferences.setString('uname', username);
                preferences.setString('pword', password);
                preferences.setBool('newuser',false);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SharedHome()));
              }
              email.text ='';
              pwd.text ='';

            }, child: Text('Login'))

          ],
        ),
      ),
    );
  }
}
