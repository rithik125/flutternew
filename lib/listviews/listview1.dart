import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.cyan),
    debugShowCheckedModeBanner: false,
    home: Listview1(),
  ));
}

class Listview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Center(child: Text("LISTVIEW1_CONTACTS")),
      ),
      body: ListView(
        children: [
          //Center(child: Text("Coustomer List")),
          //   Image.asset("assets/icons/male.png"),
          //   Image.asset("assets/icons/male.png"),
          //   Image.asset("assets/icons/male.png"),
          //   Image.asset("assets/icons/male.png")
          Card(
            color: Colors.grey,
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.blue,
            child: ListTile(
              //tileColor: Colors.grey,
              leading: Image.asset("assets/icons/woman2.png"),
              title: Text("anu"),
              subtitle: Text("12345677"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.message,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 15,
            shadowColor: Colors.blue,
            child: ListTile(
              // tileColor: Colors.grey,
              leading: Image.asset("assets/icons/male.png"),
              title: Text("rahul"),
              subtitle: Text("12345677"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call, color: Colors.blue),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.message,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 15,
            shadowColor: Colors.blueAccent,
            child: ListTile(
                //tileColor: Colors.grey,
                leading: Image.asset("assets/icons/woman.png"),
                title: Text("sindhu"),
                subtitle: Text("12345677"),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.message,
                      color: Colors.blue,
                    )
                  ],
                )),
          ),
          Card(
            elevation: 15,
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Image.asset("assets/icons/male.png"),
                title: Text("reghu"),
                subtitle: Text("12345677"),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.message,
                      color: Colors.blue,
                    )
                  ],
                )),
          ),

          Card(
            color: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: CircleAvatar(
                //backgroundColor: Colors.red,
                backgroundImage: AssetImage("assets/images/neom.jpg"),
                //child: Image.asset("assets/images/neom.jpg"),
                //radius: 27,
              ),
              //leading: Image.asset("assets/icons/woman4.png"),
              title: Text("keerru"),
              subtitle: Text("12345677"),
              trailing: Wrap(children: [
                Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.message,
                  color: Colors.blue,
                )
              ]),
            ),
          ),
          Card(
            color: Colors.grey,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: CircleAvatar(
                //backgroundColor: Colors.red,
                backgroundImage: AssetImage("assets/images/neom.jpg"),
                //child: Image.asset("assets/images/neom.jpg"),
                //radius: 27,
              ),
              //leading: Image.asset("assets/icons/woman4.png"),
              title: Text("niranjan"),
              subtitle: Text("12345677"),
              trailing: Wrap(children: [
                Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.message,
                  color: Colors.blue,
                )
              ]),
            ),
          ),
          Card(
            color: Colors.grey,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: CircleAvatar(
                //backgroundColor: Colors.red,
                backgroundImage: AssetImage("assets/images/neom.jpg"),
                //child: Image.asset("assets/images/neom.jpg"),
                //radius: 27,
              ),
              //leading: Image.asset("assets/icons/woman4.png"),
              title: Text("kishan"),
              subtitle: Text("12345677"),
              trailing: Wrap(children: [
                Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.message,
                  color: Colors.blue,
                )
              ]),
            ),
          ),
          Card(
            color: Colors.grey,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: CircleAvatar(
                //backgroundColor: Colors.red,
                backgroundImage: AssetImage("assets/images/neom.jpg"),
                //child: Image.asset("assets/images/neom.jpg"),
                //radius: 27,
              ),
              //leading: Image.asset("assets/icons/woman4.png"),
              title: Text("althaf"),
              subtitle: Text("12345677"),
              trailing: Wrap(children: [
                Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.message,
                  color: Colors.blue,
                )
              ]),
            ),
          )

        ],
      ),
    );
  }
}
