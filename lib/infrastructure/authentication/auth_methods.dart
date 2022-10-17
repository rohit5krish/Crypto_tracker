import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String result = 'Unknown Error';

  // Create account for a User
  Future<String> signupUser({
    required String email,
    required String pass,
  }) async {
    try {
      UserCredential userCred = await _auth.createUserWithEmailAndPassword(
          email: email, password: pass);
      await _firestore
          .collection('userDetails')
          .doc(userCred.user!.uid)
          .set({"favorites": []});
      result = 'success';
    } on FirebaseAuthException catch (err) {
      result = err.message.toString();
    } catch (e) {
      result = e.toString();
    }
    return result;
  }

  // Login User
  Future<String> LoginUser({
    required String email,
    required String password,
  }) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        result = "success";
      } else {
        result = "Enter all Fields";
      }
    } on FirebaseAuthException catch (error) {
      if (error.code == "user-not-found") {
        result = "No User Found.";
      } else if (error.code == "wrong-password") {
        result = "Wrong Password. Check password and try again.";
      } else {
        result = error.message.toString();
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  // Signout User
  Future<void> signOutUser() async {
    await _auth.signOut();
  }
}
