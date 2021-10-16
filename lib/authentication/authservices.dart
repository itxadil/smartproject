import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helloworld/databases/userdatabase.dart';

class serviceauth{
  final FirebaseAuth _auth=FirebaseAuth.instance;

 Future getuserdata(String email,String password,String name,String phonenumber)async{
           try{
           AuthResult result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
           FirebaseUser user=result.user;
           await mydatabases().creatingdatabase(email, password, name, phonenumber, user.uid);
           return user;
           }catch(e){
             print(e.toString());
           }
        }
  Future loginforuser(String email,String password) async{
     AuthResult result=await _auth.signInWithEmailAndPassword(email: email, password: password);
     return result.user;
  }
}