import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsapps(),
  ));
}

class Whatsapps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.group),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("new group")),
              PopupMenuItem(child: Text("manage contacts")),
              PopupMenuItem(child: Text("Block & filter")),
              PopupMenuItem(child: Text("Edit")),
            ];
          }),
        ],
        backgroundColor: Colors.green,
        title: Text("WHATSAPP"),
      ),
      body: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.greenAccent,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/annie.jpg")),
              title: Text("frango"),
              subtitle: Wrap(
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.blue,
                  ),
                  Text("Hello")
                ],
              ),
              trailing: Column(
                children: [
                  Text("yestarday"),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 15,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
