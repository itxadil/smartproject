import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class fetchingdata{
  fetchingdata();
  List userlist=[];
  

Future getdocs(String a)async{
  QuerySnapshot querySnapshot = await Firestore.instance.collection("collection").getDocuments();
  var str=querySnapshot.documents[0][a];
}
}