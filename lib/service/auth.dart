import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_app/models/user.dart';
class AuthService{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }
  Future signInEmailandPass(String email, String pass)async{
    try{
      AuthResult _authresult=await _auth.signInWithEmailAndPassword(email: email, password: pass);
      FirebaseUser firebaseUser= _authresult.user;
      return _userFromFirebaseUser(firebaseUser);
    }catch(e){
      print(e.toString());
    }
    Future signUpwithEmailAndPassword(String email, String password)async{
      try{
        AuthResult authResult= await _auth.createUserWithEmailAndPassword(email: email, password: password);
        FirebaseUser firebaseUser = authResult.user;
        return _userFromFirebaseUser(firebaseUser);
      }catch(e){
        print(e.toString());
      }
    }
    Future signOut() async{
      try{
        return await _auth.signOut();
      }catch(e){
        print(e.toString());
        return null;
      }
    }
  }
}