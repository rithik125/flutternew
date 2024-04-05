import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyC4h5ojCKF_NkzJPQuB-ZrRBl81igJn3GY",
        appId: "1:198226191935:android:0487a918c6d305c82cfa8a",
        messagingSenderId: "",
        projectId: "mygsignin-d7559",
        storageBucket: "mygsignin-d7559.appspot.com"),
  );
  runApp(MaterialApp(
    home: fireBaseCRUD(),
  ));
}

class fireBaseCRUD extends StatefulWidget {
  const fireBaseCRUD({super.key});

  @override
  State<fireBaseCRUD> createState() => _fireBaseCRUDState();
}

class _fireBaseCRUDState extends State<fireBaseCRUD> {
  final cname = TextEditingController();
  final cemail = TextEditingController();
  late CollectionReference _userCollection;

  @override
  void initState() {
    _userCollection = FirebaseFirestore.instance.collection("Users");
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("user Data"),
        backgroundColor: Colors.green,
      ),
      body: StreamBuilder(
          stream: readUser(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Error ${snapshot.error}');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final users = snapshot.data!.docs;
            return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  final userId = user.id;
                  final username = user["name"];
                  final useremail = user['email'];

                  return ListTile(
                    title: Text(
                      '$username',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Text(
                      '$useremail',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              editUserdata(userId);
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(onPressed: () {
                          deleteUser(userId);
                        }, icon: Icon(Icons.delete))
                      ],
                    ),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createUser(),
        child: Icon(Icons.add),
      ),
    );
  }

  void createUser() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Add User"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: cname,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Name"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: cemail,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "email"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              actions: [
                OutlinedButton(
                    onPressed: () => addUsertoDB(cname.text, cemail.text),
                    child: Text("Calcel")),
                OutlinedButton(onPressed: () {}, child: Text("Create User"))
              ],
            ));
  }

  Future<void> addUsertoDB(String name, String email) async {
    return _userCollection.add({'name': name, 'email': email}).then((value) {
      print("User added Successfully");
      cname.clear();
      cemail.clear();
      Navigator.of(context).pop();
    }).catchError((error) {
      print("failed to add data $error");
    });
  }

  Stream<QuerySnapshot> readUser() {
    return _userCollection.snapshots();
  }

  void editUserdata(String userId) {
    var uname = TextEditingController();
    var uemail = TextEditingController();

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: uname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Name"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: uemail,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "email"),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  updateUser(userId,uname.text,uemail.text);
                }, child: Text("Update usre")),

              ],
            ),
          );
        });
  }

 Future <void> updateUser(String userId, String uname, String uemail) async{
    var updatedvalue ={"name":uname,"email":uemail};
    return _userCollection.doc(userId).update(updatedvalue).then((value) {
      Navigator.of(context).pop();
      print ("User data Updated successfully");
    }).catchError((error){
      print("User data Updation falied ");
    });
 }

 Future <void> deleteUser(var id)async {
    return _userCollection.doc(id).delete().then((value) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("usre Deleted Successfully")));
    }).catchError((erroe){
      print("usre Deleted failed $erroe");
    });
 }
}
