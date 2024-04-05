import 'package:firebase_auth/firebase_auth.dart';
final FirebaseAuth auth =FirebaseAuth.instance;

class FireBaseFunctions {
  Future<String?> registerUser(
      {required String email, required String passw}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: passw,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      return e.message;
    } catch (e) {
      print(e);
    }
  }

 Future <String?> loginUser({required String emaill, required String pwd})async {
   try {
     await auth.signInWithEmailAndPassword(
         email: emaill,
         password: pwd
     );
     return null;
   } on FirebaseAuthException catch (e) {
     print(e.message);
     return e.message;

     }

 }
}
