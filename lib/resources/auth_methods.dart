import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testmulakat/model/user_model.dart';

class AuthMethods{
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;


  Future<UserModel> getUserDetails() async{
    User currentUser = _auth.currentUser!;
    DocumentSnapshot snap = await _firestore.collection("users").doc(currentUser.uid).get();
    return UserModel.fromSnap(snap);

  }


  Future<String>signUpUser({required String email, required String password, required String username})async{
    String res="Some error occurred";
    try{
      if(email.isNotEmpty || password.isNotEmpty || username.isNotEmpty){
        // register user
        UserCredential cred=await _auth.createUserWithEmailAndPassword(email: email, password: password);

        // add to user our database
        UserModel user=UserModel(
            username:username,
            uid:cred.user!.uid,
            email:email,
            basket: [],
        );
        await _firestore.collection("users").doc(cred.user!.uid).set(user.toJson());
      }

    }catch(err){
      res=err.toString();
    }
    return res;
  }

  Future<void>signIn({required String email,required String password}){
    return _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  void signOut(){
    _auth.signOut();
  }
}