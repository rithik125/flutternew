import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsappEx(),
  ));
}

class WhatsappEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("New group"),
              ),
              PopupMenuItem(child: Text("New Broadcast")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("Starred messages")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Setting"))
            ];
          })
        ],
        backgroundColor: Colors.green.shade900,
        title: Text("WHATSAPPEX"),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.grey.shade300,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pawel.jpg"),
              ),
              title: Text("kishan"),
              subtitle: Wrap(children: [
                Icon(
                  Icons.done_all,
                  color: Colors.blue,
                ),
                Text("hello")
              ]),
              trailing: Column(
                children: [
                  Text("yesterday"),
                  CircleAvatar(
                    backgroundColor: Colors.green.shade900,
                    radius: 15,
                  )
                ],
              ),
            ),
          ),
          Card(color:Colors.grey.shade300 ,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/joshua-earle.jpg"),
                ),
                title: Text("ambro"),
                subtitle: Wrap(children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.blueAccent,
                  ),
                  Text("avide nii")
                ]
                ),
              trailing: Column(children: [
                Text("yesterday"),
                CircleAvatar(backgroundColor: Colors.green.shade900,radius: 15,)
              ],),
            ),
          )
        ],
      ),
    );
  }
}
