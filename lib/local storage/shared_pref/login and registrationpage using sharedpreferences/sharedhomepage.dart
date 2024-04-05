import 'package:flutter/material.dart';
import 'package:flutternew/local%20storage/shared_pref/login%20and%20registrationpage%20using%20sharedpreferences/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHomePage extends StatefulWidget {
  const SharedHomePage({super.key});

  @override
  State<SharedHomePage> createState() => _SharedHomePageState();
}

class _SharedHomePageState extends State<SharedHomePage> {
  late SharedPreferences preferences;
  late String username;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData()async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('uname')!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('WELCOME $username'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              preferences.setBool('newuser',true);
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2()));
            }, child:Text('Logout') )
          ],
        ),
      ),

    );
  }
}