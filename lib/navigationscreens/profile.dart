import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/fetchingdata/datafetch.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//import 'myclass.dart';
fetchingdata obj=new fetchingdata();
class profileClass extends StatefulWidget {
  @override
  _profileClassState createState() => _profileClassState();
}

class _profileClassState extends State<profileClass> {
  String name=' ';
  int index=0;
  String email=" ";
  String city= " ";
  int number;
    List fetchdatalist=[];
    StreamBuilder getstream(String a){
      return StreamBuilder(
     stream: Firestore.instance.collection('Userinfo').snapshots(),
     builder: (BuildContext context,snapshot){
       return Text(snapshot.data.docments[0][a]);
     },
      );
    }

  //registerYourself obj = registerYourself();
  //myClass obj = myClass();
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        
      backgroundColor: Color(0xffE5E5E5),
          
        body:  Column(children: [
               
               SizedBox(height: 20),
              //Icon(Proff.logo, color: Colors.black, size: 120), 
                    CircleAvatar(radius:70),
                    SizedBox(height: 15),
        Text("Personal Information", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)), //cont for PI
                    SizedBox(height: 30),
                    
                    Row(children: [
                      SizedBox(width: 20),
                      Icon(Icons.refresh, color: Colors.black),
                      SizedBox(width: 20),
                      getstream('name'),
                     // Text('Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))
                    ]),
                    SizedBox(height: 20),
                    Row(children: [
                        SizedBox(width: 20),
                      Icon(Icons.email, color: Colors.black),
                      SizedBox(width: 20),
                  
                      Text('Email', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))
                    ]),
                    SizedBox(height: 20),
                    Row(children: [
                        SizedBox(width: 20),
                      Icon(Icons.phone,  color: Colors.black),
                      SizedBox(width: 20),
                   
                      Text('Number', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))
                    ]),
                    SizedBox(height: 20),
                    Row(children: [
                           SizedBox(width: 20),
                      Icon(Icons.home, size: 20, color: Colors.black),
                      SizedBox(width: 20),
                      Text("Your city", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))
                    ]),
                    SizedBox(height: 30),
 Text("My Learning", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)),
                    SizedBox(height: 20),
                    Row(children: [
                            SizedBox(width: 20),
                      Icon(Icons.book, color: Colors.black),
                      SizedBox(width: 20),
                     RawMaterialButton(
                          child: Text("My courses", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),
                          onPressed: () {
                            setState(() {});
                          })
                    ]),
                    SizedBox(height: 20),
                    Row(children: [
                            SizedBox(width: 20),
                      //Icon(Proff.logo, size: 20, color: Colors.black),
                      Icon(Icons.group),
                      SizedBox(width: 20),
                      RawMaterialButton(
                          child: Text("Meetings with tutor", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),
                          onPressed: () {
                            setState(() {});
                          })
                    ])
                  //cont
             //LV
             //cont
              ])  ); //scaff
  }
}
