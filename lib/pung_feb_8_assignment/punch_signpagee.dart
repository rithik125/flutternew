import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Signup_page(),
  ));
}

class Signup_page extends StatelessWidget {
 var email = TextEditingController();
 var TextFormKey =GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/paint-trippy.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PUNCH',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text('punch· Earn· Repeat',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ],
              ),
            ),
            Expanded(
                child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Form(key: TextFormKey,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.arrow_back)),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'SIGN Up',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 70,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextField(controller: email,
                              decoration: InputDecoration(
                                  hintText: 'Full Name',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)))
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Phone Number',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)))),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email id',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  minimumSize: Size(300, 50),
                                  side: BorderSide(
                                      width: 3, color: Colors.black)),
                              onPressed: () {},
                              child: Text(
                                'CREATE ACCOUNT',
                                style: TextStyle(color: Colors.white),
                              )),
                          //TextFormField(
                           // validator: (data){
                             // if (data!.isEmpty){
                               // return 'isEmpty';
                             // }
                            //},
                          //)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
