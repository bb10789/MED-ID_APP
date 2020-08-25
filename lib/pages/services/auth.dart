import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in
  Future signInAnonymous() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    } catch (e) {
      return null;
    }
  }

  // sign in email & password
  Future signInEmail(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return user;
    } catch (e) {
      return null;
    }
  }
  // sign out
}
