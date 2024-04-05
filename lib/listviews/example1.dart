import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listview1(),
  )
  );
}

class listview1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,centerTitle: true,
        title: Text("CONTACTS",),),
      body: ListView(
        children: [
          // Center(child: Text("PEOPLE WORKING")),
          // Image.asset("assets/icons/femail.png"),
          // Image.asset("assets/icons/garbage_icon.png"),
          // Image.asset("assets/icons/head_icon.png"),
          // Image.asset("assets/icons/mail_send_icon.png"),
          // Image.asset("assets/icons/man.png"),
          // Image.asset("assets/icons/man_person.png"),
          
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,color: Colors.lightBlueAccent,
            shadowColor: Colors.blueAccent,
            child: ListTile(
              //tileColor: Colors.grey,
             leading:
             CircleAvatar(
               //backgroundColor: Colors.red,
                backgroundImage: AssetImage("assets/images/brooke.jpg"),),
              //leading:Image.asset("assets/icons/femail.png"),
              title: Text("anu"),
              subtitle: Text("7989899879"),
              trailing: Wrap(
                children: [
                  Icon(Icons.message,color: Colors.blue,),
                  //SizedBox(width: 10,),
                  Icon(Icons.call,color: Colors.blue,),
                ],
              ),

            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,color:Colors.lightBlueAccent ,
            shadowColor: Colors.blueAccent,
            child: ListTile(
              //tileColor: Colors.grey,
              leading: CircleAvatar(backgroundImage:AssetImage ("assets/images/boliviainteligente.jpg"),),
              //leading:Image.asset("assets/icons/man5.png"),
              title: Text("sachu"),
              subtitle: Text("7989899879"),
              trailing: Row(
                mainAxisSize:MainAxisSize.min,
                children: [
                  Icon(Icons.message,color: Colors.blue,),
                  Icon(Icons.call,color: Colors.blue,),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,color: Colors.lightBlueAccent,
            shadowColor: Colors.blueAccent,
            child: ListTile(
              //tileColor: Colors.grey,
              leading:Image.asset("assets/icons/man4.png"),
              title: Text("arjun"),
              subtitle: Text("7989899879"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.message,color: Colors.blue,),
                  Icon(Icons.call,color: Colors.blue,)
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,color: Colors.lightBlueAccent,
            shadowColor: Colors.blueAccent,
            child: ListTile(
              //tileColor: Colors.grey,
              leading:Image.asset("assets/icons/man3.png"),
              title: Text("anu"),
              subtitle: Text("7989899879"),
              trailing: Wrap(
                children: [
                  Icon(Icons.message,color: Colors.blue,),
                  Icon(Icons.call,color: Colors.blue,)
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation:20 ,color: Colors.lightBlueAccent,
            shadowColor: Colors.blueAccent,
            child: ListTile(
                //tileColor: Colors.grey,
              leading:Image.asset("assets/icons/man (2).png"),
              title: Text("anu"),
              subtitle: Text("7989899879"),
              trailing:Wrap(
                children: [ Icon(Icons.message,color: Colors.blue,),
                            Icon(Icons.call,color: Colors.blue,)],
                 )
            ),
          ),
          Card(
            elevation: 20,
            shadowColor: Colors.blueAccent,
            child: ListTile(tileColor: Colors.grey,
              leading:Image.asset("assets/icons/femail.png"),
              title: Text("anu"),
              subtitle: Text("7989899879"),
              trailing: Icon(Icons.call,color: Colors.blue,),
            ),
          ),
          Card(
            elevation: 20,
            shadowColor: Colors.blueAccent,
            child: ListTile(tileColor: Colors.grey,
              leading:Image.asset("assets/icons/man.png"),
              title: Text("anu"),
              subtitle: Text("7989899879"),
              trailing: Icon(Icons.call,color: Colors.blue,),
            ),
          ),
             Card(
               elevation: 20,
               shadowColor: Colors.blueAccent,
               child: ListTile(tileColor: Colors.grey,
                leading:Image.asset("assets/icons/femail.png"),
                title: Text("anu"),
                subtitle: Text("7989899879"),
                trailing: Icon(Icons.call,color: Colors.blue,),
            ),
             ),
          Card(elevation: 20,
            shadowColor: Colors.blueAccent,
            child: ListTile(tileColor: Colors.grey,
              leading:Image.asset("assets/icons/male.png"),
              title: Text("anu"),
              subtitle: Text("7989899879"),
              trailing: Icon(Icons.call,color: Colors.blue,),
            ),
          ),
          Card(
            elevation: 20,
            shadowColor: Colors.blueAccent,
            child: ListTile(tileColor: Colors.grey,
              leading:Image.asset("assets/icons/femail.png"),
              title: Text("anu"),
              subtitle: Text("7989899879"),
              trailing: Icon(Icons.call,color: Colors.blue,),


            ),
          ),
          Card(elevation: 20,
            shadowColor: Colors.blueAccent,
            child: ListTile(tileColor: Colors.grey,
              leading:Image.asset("assets/icons/man.png"),
              title: Text("anu"),
              subtitle: Text("7989899879"),
              trailing: Row(mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.message,color: Colors.blueAccent,),
                  Icon(Icons.call,color: Colors.blue,),
                ],
              ),


              ),
            ),

          Card(elevation: 20,
            shadowColor: Colors.blueAccent,
            child: ListTile(tileColor: Colors.grey,
              leading:Image.asset("assets/icons/man_person.png"),
              title: Text("anu"),
              subtitle: Text("7989899879"),
              trailing: Icon(Icons.call,color: Colors.blue,),
            ),
          ),
        ],
      ),
    );
  }
}
