import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home_shered_page extends StatefulWidget {
  const Home_shered_page({super.key});

  @override
  State<Home_shered_page> createState() => _Home_shered_pageState();
}

class _Home_shered_pageState extends State<Home_shered_page> {
  late SharedPreferences preferences;
  late String username;
  @override
  void initState() {
    Datafetch();
    super.initState();
  }
  void Datafetch() async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("Email")!;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/meditating image.png"))
              ),
            ),
            SizedBox(height: 20,),
            Text("WELCOME $username",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 40,color: Colors.white),)
          ],
        )
      ),



    );
  }


}

