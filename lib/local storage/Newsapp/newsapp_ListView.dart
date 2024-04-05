import 'package:flutter/material.dart';

import 'newsapp_model.dart';
void main(){
  runApp(MaterialApp(home: newss(),));
}

class newss extends StatelessWidget {
  final List<News> news = [
    News(
        title: 'the morning After',
        subtitle: 'robot marker boston Dynamics has a new owner',
        Urlimage: "assets/images/images 4.jpg"),
    News(
        title: 'the morning After',
        subtitle: 'robot marker boston Dynamics has a new owner',
        Urlimage: "assets/images/images 4.jpg"),
    News(
        title: 'the morning After',
        subtitle: 'robot marker boston Dynamics has a new owner',
        Urlimage: "assets/images/images 4.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News today'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context,index)=>ListTile(
          leading: Image.asset(news[index].Urlimage),
          title: Text(news[index].title),
          subtitle: Text(news[index].subtitle),
        ),
        itemCount: 3
      ),
    );
  }
}
