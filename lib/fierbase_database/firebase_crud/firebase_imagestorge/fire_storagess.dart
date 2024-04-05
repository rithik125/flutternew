// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// import '../storagemain.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: FirebaseOptions(
//         apiKey: "AIzaSyC4h5ojCKF_NkzJPQuB-ZrRBl81igJn3GY",
//         appId: "1:198226191935:android:0487a918c6d305c82cfa8a",
//         messagingSenderId: "",
//         projectId: "mygsignin-d7559",
//         storageBucket: "mygsignin-d7559.appspot.com"),
//   );
//   runApp(MaterialApp(
//     home: mediaStorage(),
//   ));
// }
//
// class mediaStorage extends StatefulWidget {
//   const mediaStorage({super.key});
//
//   @override
//   State<mediaStorage> createState() => _mediaStorageState();
// }
//
// class _mediaStorageState extends State<mediaStorage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Media Storage"),
//         backgroundColor: Colors.deepPurple,
//         actions: [IconButton(onPressed: () =>upload("Camera"), icon: Icon(Icons.camera_alt))],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(12),
//         child: Column(
//           children: [
//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton.icon(
//                     onPressed: ()=>upload("Camera"),
//                     icon: Icon(Icons.camera),
//                     label: Text("Camera")),
//                 ElevatedButton.icon(
//                     onPressed: () =>upload("Gallery"),
//                     icon: Icon(Icons.phone),
//                     label: Text("Gallery"))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//  Future<void> upload(String imgSource) async{
//     final picker = imagePicker();
//     XFile? pickedImage;
//     try {
//       pickedImage = await picker.pickImage(
//           source: imageSource == "Camera"
//               ? ImageSource.camera
//               : ImageSource.gallery);
//     }catch(error){
//       print(error);
//     }
//     }
//  }
// }
