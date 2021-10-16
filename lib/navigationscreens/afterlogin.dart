import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
//import 'package:helloworld/account.dart';
import 'package:helloworld/navigationscreens/home.dart';
import 'package:helloworld/mainfolder/main.dart';
import 'package:helloworld/navigationscreens/tutor.dart';
import 'package:helloworld/navigationscreens/courses.dart';
//import 'package:helloworld/account.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import '..navigationscreens/main.dart';
import 'profile.dart';
import 'contact.dart';
import 'conditions.dart';
import 'delete.dart';
import 'setting.dart';
//import 'home.dart';

 String f;
class afterloginclass extends StatefulWidget {
  @override
  afterloginclassState createState() => afterloginclassState();
}

class afterloginclassState extends State<afterloginclass> {

  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:4,child:Scaffold(
        backgroundColor: Color(0xffE5E5E5),
    
      appBar:AppBar(bottom: TabBar(tabs: [
        
            Tab(child: Text('Home'),icon: Icon(Icons.home),),
         Tab(child: Text('Course'),icon: Icon(Icons.book),),
          Tab(child: Text('Tutor'),icon: Icon(Icons.male),),
           Tab(child: Text('Account'),icon: Icon(Icons.person),),
      ],),),
     drawer: Drawer(
            child: ListView(children: [
      SizedBox(height: 20),
      ListTile(
          title: Text("Contact", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),
          onTap: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => contactClass()));
            });
          }),
      SizedBox(height: 20),
      ListTile(
          title: Text("Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),
          onTap: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => settingClass()));
            });
          }),
      SizedBox(height: 20),
      ListTile(
          title: Text("Delete account", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
          onTap: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>del()));
            });
          }),
          SizedBox(height:20),
      ListTile(
          title: Text("Terms & Conditions  / privacy", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),
          onTap: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => tcClass()));
            });
          }),
          SizedBox(height:20),
      ListTile(
          title: Text("Logout", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),
          onTap: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => loginclass()));
            });
          })
    ]) //LV
            ),
       body:TabBarView(children: [
         myhome(),
      //Center(child:Text('Course')),
        //Center(child:Text('Tutor')),
        courseClass(),
        tutorClass(),
          //Center(child:Text('Account')),
          //accountClass()
          profileClass()
       ],)

    ));
  }
}