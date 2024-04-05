import 'package:flutter/material.dart';
import 'package:flutternew/local%20storage/hive_using_adapter/services/hiveDB.dart';

class Hive_Register extends StatefulWidget {
  const Hive_Register({super.key});

  @override
  State<Hive_Register> createState() => _Hive_RegisterState();
}

class _Hive_RegisterState extends State<Hive_Register> {
  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("REGISTERATION PAGE")
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: name_controller,
                decoration: const InputDecoration(
                    hintText: "Name", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email_controller,
                decoration: const InputDecoration(
                    hintText: "Email", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: pass_controller,
                decoration: const InputDecoration(
                    hintText: "password", border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(onPressed: () async{
              //fetch all registered user from db
              final reg_user = await HiveDB.getalluser();
              }, child: const Text("Register"))
          ],
        ),
      ),
    );
  }
}
