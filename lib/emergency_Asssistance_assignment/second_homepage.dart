import 'package:flutter/material.dart';

import 'contact_map.dart';

class EmergencyHome2 extends StatefulWidget {
  const EmergencyHome2({super.key});

  @override
  State<EmergencyHome2> createState() => _EmergencyHome2State();
}

class _EmergencyHome2State extends State<EmergencyHome2> {

  var names = [
    "sharon kuttan",
    "nandhu mon",
    "arjun ks",
    "kishan cs",
    "akashy ms",
    "nithwin",
    "abhinadhan",
    "abhi ",
    "arun kg",
    "deepak kg",
    "jeson",
    "Xzavier Palacios",
    "Bria McCarthy",
    "rahul",
    "sreel ",
    "anu ss",
    "nandhan",
    "amrutha",
    "angle",
    "sareena"
  ];

  var phnnum = [
    "(676) 560-1740",
    "(281) 531-8256",
    "(758) 892-4673",
    "(802) 398-5264",
    "(937) 849-4986",
    "(667) 391-4142",
    "(696) 372-7710",
    "(910) 996-8656",
    "(913) 583-7655",
    "(512) 587-4138",
    "(241) 890-7298",
    "(823) 992-5798",
    "(236) 642-0031",
    "(821) 620-5515",
    "(721) 216-6279",
    "(255) 906-2368",
    "(610) 593-8163",
    "(646) 559-1142",
    "(826) 730-1466",
    "(576) 661-0626",
  ];

  var profilepic = [
    "assets/icons/man_male.png",
    "assets/icons/man5.png",
    "assets/icons/man4.png",
    "assets/icons/man3.png",
    "assets/icons/man (2).png",
    "assets/icons/man_male.png",
    "assets/icons/man5.png",
    "assets/icons/man4.png",
    "assets/icons/man3.png",
    "assets/icons/man (2).png",
    "assets/icons/man_male.png",
    "assets/icons/man5.png",
    "assets/icons/man4.png",
    "assets/icons/man3.png",
    "assets/icons/man (2).png",
    "assets/icons/man_male.png",
    "assets/icons/man5.png",
    "assets/icons/man4.png",
    "assets/icons/man3.png",
    "assets/icons/man (2).png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Text(
                    "WE'RE SENDING",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Text(
                    "EMERGENCY SUPPORT",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Don't worry our support team will",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      )),
                  const Text("contact you in next...",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: 1 - 30 / 60,
                          valueColor: const AlwaysStoppedAnimation(Colors.red),
                          strokeWidth: 12,
                          backgroundColor: Colors.grey.shade300,
                        ),
                        const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '00:30',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60),
                              ),
                              Text(
                                'seconds',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: contacts
                          .map((value) => InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'callerPage',
                              arguments: value['id']);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 1),
                          child: Card(
                            child: ListTile(
                              leading: Image.asset(
                                value['image'],
                              ),
                              title: Text(
                                value['name'],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(value['phnnum']),
                              trailing: Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.wifi_calling_3,
                                        color: Colors.white,
                                      ))),
                            ),
                          ),
                        ),
                      ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}