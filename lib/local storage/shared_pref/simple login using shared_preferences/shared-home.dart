import 'package:flutter/material.dart';
import 'package:flutternew/local%20storage/shared_pref/simple%20login%20using%20shared_preferences/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  const SharedHome({super.key});

  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  late SharedPreferences preferences;
  late String username;
  @override
  void initState() {
   fetchData();
    super.initState();
  }
  void fetchData() async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("uname")!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [Text("WELCOME $username"),
      SizedBox(
        height: 10,
        
      ),
        ElevatedButton(onPressed: (){
          preferences.setBool('newuser', true);
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_Page_shared()));
        }, child:Text('LOGOUT') )
      ],),),
    );
  }


}
