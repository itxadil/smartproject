import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class mydatabases{
  final CollectionReference userdata=Firestore.instance.collection('Userinfo');
  Future creatingdatabase(String email,String password,String name,String phonenumber,String uid)async{
    return await userdata.document(uid).setData({'email':email,'password':password,'name':name,'phone':phonenumber});
  }


}

