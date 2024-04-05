import 'package:flutter/material.dart';
import 'package:flutternew/statemanagement/using_get/controller/countController.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
    home: GetCountMain(),
  ));
}

class GetCountMain extends StatelessWidget {
  const GetCountMain({super.key});

  @override
  Widget build(BuildContext context) {
    //creating an instance of controller(or register the controller
    // inside this widget tree)
    final CountCntrl conuntcontroller =Get.put(CountCntrl());
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Counter using GetX",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Obx(() => Text("count = ${conuntcontroller.count}")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    conuntcontroller.increment();
                  },
                  child: CircleAvatar(backgroundColor: Colors.green,
                  child: Icon(Icons.add),),
                ),
                InkWell(
                  onTap: (){
                    conuntcontroller.decrement();
                  },
                  child: CircleAvatar(backgroundColor: Colors.red,
                    child: Icon(Icons.minimize),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
