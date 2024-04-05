
import 'package:flutter/material.dart';
import 'package:flutternew/splashfeb/loginPage.dart';
import 'package:flutternew/utilsfeb/mycolors.dart';


class SignUpEx extends StatelessWidget {
  TextEditingController passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an Account, it`s free",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        hintText: "Username",
                        labelText: "UserName",
                        border: OutlineInputBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(20))
                            )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (email){
                      if(email!.isEmpty && email.contains('@')){
                        return "email must be a valid email";
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "email",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (pwd){
                      if(pwd!.isEmpty && pwd.length < 6){
                        return "password is empty or check the length";
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "pwd",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (cmpwd){
                      if(cmpwd!.isEmpty &&  cmpwd != passwordcontroller.text){
                        return "password mismatch";
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        labelText: "Confirm Password",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: 180,
                    height: 30,
                    color: Colors.black,
                    onPressed: () {
                      var vaild = formkey.currentState!.validate();
                      if(vaild == true){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>loginP()));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("sign Up failed")));
                      }
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // RichText(
                  //   text: TextSpan(
                  //       text: "Already have an account?",
                  //       style: TextStyle(color: Colors.black),
                  //       children: [
                  //         TextSpan(
                  //             text: "Login",
                  //             recognizer: TapGestureRecognizer()
                  //               ..onTap = () => {
                  //                     Navigator.push(
                  //                         context,
                  //                         MaterialPageRoute(
                  //                             builder: (context) => loginP()))
                  //                   },
                  //             style: TextStyle(
                  //                 fontWeight: FontWeight.bold, fontSize: 20))
                  //       ]),
                  // )
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => loginP()));
                      },
                      child: Text(
                        "Already have an account? LOGIND",
                        style: TextStyle(color: MyColor.basicColor
                        ),
                      )),
                  //Text("arun",style: MyTextThem.bodyTextStyel,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
