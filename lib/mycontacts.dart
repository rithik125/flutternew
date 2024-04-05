import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mycontacts1(),));
}

class mycontacts1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("mycontacts"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 10,),
          Icon(Icons.people),
          SizedBox(width: 10,),

          PopupMenuButton(itemBuilder: (context){
            return[
                PopupMenuItem(child: Text("new group")),
              PopupMenuItem(child: Text("manage contacts")),
              PopupMenuItem(child: Text("Block & filter")),
              PopupMenuItem(child: Text("Edit")),
            ];
          }),
        ],
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.black,
            //shadowColor: Colors.white,
            elevation: 20,
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black,
              backgroundImage: AssetImage("assets/images/boliviainteligente.jpg"),),
              title: Text("ambro"),
              subtitle: Text("76869999"),
              trailing:Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call,color: Colors.green,),
                  Icon(Icons.message,color: Colors.blue,)
                ],
              ),
            ),
          ),
    ListTile(
    leading:Image.asset("assets/icons/man.png") ,
    title: Text("arjun"),
    subtitle: Text("123456668"),
    trailing: Wrap(
    children: [
    Icon(Icons.message,color: Colors.blue,),
    Icon(Icons.call,color: Colors.green,)
    ]
    ),
    ),

          ListTile(
            leading:Image.asset("assets/icons/man.png") ,
            title: Text("arjun"),
            subtitle: Text("123456668"),
            trailing:Row(
              children: [
                Text("yesterday"),
                CircleAvatar(
                  radius: 10,backgroundColor: Colors.grey,
                ),
                Icon(Icons.message,color: Colors.blue,),
                Icon(Icons.call,color: Colors.green,)
    ]
    ),
    ),
    ListTile(
    leading:Image.asset("assets/icons/man.png") ,
    title:Text("arjun"),
    subtitle:Text("123456668"),
    trailing:Wrap(
    children:[
    Icon(Icons.message,color: Colors.blue,),
    Icon(Icons.call,color: Colors.green,)
    ]
    ),
    ),
    ListTile(
    leading:Image.asset("assets/icons/man.png") ,
    title: Text("arjun"),
    subtitle:Text("123456668"),
    trailing:Wrap(
    children:[
    Icon(Icons.message,color: Colors.blue,),
    Icon(Icons.call,color: Colors.green,)
    ]
    ),
    ),

    ListTile(
    leading:Image.asset("assets/icons/man.png") ,
    title: Text("arjun"),
    subtitle:Text("123456668"),
    trailing:Wrap(
    children:[
    Icon(Icons.message,color: Colors.blue,),
    Icon(Icons.call,color: Colors.green,)
    ]
    ),
    ),
          ListTile(
            leading:Image.asset("assets/icons/man.png") ,
            title: Text("arjun"),
            subtitle: Text("123456668"),
            trailing: Wrap(
                children: [
                  Icon(Icons.message,color: Colors.blue,),
                  Icon(Icons.call,color: Colors.green,)
                ]
            ),
          ),
          ListTile(
            leading:Image.asset("assets/icons/man.png") ,
            title: Text("arjun"),
            subtitle: Text("123456668"),
            trailing: Wrap(
                children: [
                  Icon(Icons.message,color: Colors.blue,),
                  Icon(Icons.call,color: Colors.green,)
                ]
            ),
          ),
          ListTile(
            leading:Image.asset("assets/icons/man.png") ,
            title: Text("arjun"),
            subtitle: Text("123456668"),
            trailing: Wrap(
                children: [
                  Icon(Icons.message,color: Colors.blue,),
                  Icon(Icons.call,color: Colors.green,)
                ]
            ),
          ),
        ],
    ),
    );
  }
}
