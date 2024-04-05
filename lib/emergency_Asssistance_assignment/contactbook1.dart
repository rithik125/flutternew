import 'package:flutter/material.dart';


class contactbook extends StatelessWidget {
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
      appBar: AppBar(
        leading: const Icon(Icons.keyboard_backspace,color: Colors.white,),
        centerTitle: true,
        title: const Text(
          "Emergency Contact List",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: const [
          Icon(Icons.add_circle_outline,color: Colors.white,),
          SizedBox(width: 10,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                  children:
                  List.generate(
                      names.length,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          elevation: 1,
                          child:
                          ListTile(
                            leading: Image.asset(
                              profilepic[index],
                            ),
                            title: Text(names[index]),
                            subtitle: Text(phnnum[index]),
                            trailing: const Icon(Icons.more_vert,color: Colors.black,),
                          ),
                        ),
                      ))
              ),
            ),
          ],
        ),
      ),
    );
  }
}