
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class UserModel{
  final String username;
  final String uid;
  final List<String>basket;
  final String email;

  UserModel({required this.username,required this.uid, required this.basket, required this.email});

  Map<String,dynamic>toJson() =>{
    "username":username,
    "uid":uid,
    "basket":basket,
    "email":email,
  };

  static UserModel fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data() as Map<String,dynamic>;
    return UserModel(username: snapshot["username"], uid: snapshot["uid"], basket: snapshot["basket"], email: snapshot["email"]);
  }
}