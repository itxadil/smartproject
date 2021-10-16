/*import 'package:flutter/material.dart';


class mytutor extends StatefulWidget {
  @override
  mytutorState createState() => mytutorState();
}

//
//mycont obj=new mycont();

class mytutorState extends State<mytutor> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:Scaffold(backgroundColor: Colors.white,
      body:Column(children: [
        CircleAvatar(
          radius:80,
          backgroundColor: Colors.red,
        ),
        SizedBox(height:10),
        Text("Nadir Ali Jamali",style:TextStyle(color:Colors.black,fontWeight:FontWeight.w500,fontSize:30)),
           SizedBox(height:10),
             Text("English Tutor",style:TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20)),
        SizedBox(height:30),
        Container(margin: EdgeInsets.only(left:20,right:20),
         width:40,
         height:40,
         decoration:BoxDecoration(color:Colors.blue,borderRadius:BorderRadius.circular(15)),
         child:ListTile(
           leading:Icon(Icons.email,color:Colors.black),
           title:Text('alinadir543@gmail.com',style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400)),
           trailing:Icon(Icons.arrow_forward_ios_sharp,color:Colors.black)
         )
        ),
        SizedBox(height:20),
          Container(margin: EdgeInsets.only(left:20,right:20),
         width:40,
         height:40,
         decoration:BoxDecoration(color:Colors.blue,borderRadius:BorderRadius.circular(15) ),
         child:ListTile(
           leading:Icon(Icons.phone,color:Colors.black),
           title:Text('03337063308',style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400)),
           trailing:Icon(Icons.arrow_forward_ios_sharp,color:Colors.black)
         )
        )
      ],)
    ));
  }
}*/

/*import 'package:flutter/material.dart';

class tutorClass extends StatefulWidget {
  @override
  _tutorClassState createState() => _tutorClassState();
}

class _tutorClassState extends State<tutorClass> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:Scaffold(
        backgroundColor: Colors.brown,
        body: Column(children: [
          SizedBox(height: 10, width: 10),

                CircleAvatar(
                  //backgroundImage: AssetImage('images/tutorpic.jpeg'),
                  radius: 100,
                  backgroundColor: Colors.red,
                ), //circleavatar
                SizedBox(height: 10),
                Text("Nadir Ali Jamali", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
                SizedBox(height: 10),
                Text("Admin at The Smart Engish Center",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black)),
                SizedBox(height: 10),
     
                      Container(
                        width: 300,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(children: [
                          SizedBox(width: 5),
                          Icon(Icons.cast_for_education_outlined, size: 20, color: Colors.orange),
                          SizedBox(width: 10),
                          Text("20 years + experience in English", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
                        ]),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        margin:EdgeInsets.only(left:20,right:20),
                        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(15)),
                        child: Row(children: [
                          SizedBox(width: 5),
                          Icon(Icons.email, color: Colors.black),
                          SizedBox(width: 10),
                          Text("aliNadir556@gmail.com", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
                        ]),
                      ),
                      SizedBox(height: 20),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(children: [
                            SizedBox(width: 5),
                            Icon(Icons.phone,color: Colors.black),
                            SizedBox(width: 10),
                            Text("03337063308", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
                          ]))
                    ]) //colum
                    ) //container
              //column
               //cont
        ); //scaff
  }
}*/

import 'package:flutter/material.dart';

class tutorClass extends StatefulWidget {
  @override
  _tutorClassState createState() => _tutorClassState();
}

class _tutorClassState extends State<tutorClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Color(0xffE5E5E5),
        body: Column(children: [
          SizedBox(height: 20),

                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/aa.jpeg'),
                  radius: 100,
                ), //circleavatar
                SizedBox(height: 10,),
                SizedBox(height: 5),
                Text("Nadir Ali Jamali", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
                SizedBox(height: 10),
                Text("Admin at The Smart Engish Center",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.black)),
        
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        margin:EdgeInsets.only(left:10,right:10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(children: [
                          SizedBox(width: 5),
                          Icon(Icons.book, size: 30, color: Colors.black),
                          SizedBox(width: 10),
                          Text("20 years + experience in English", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
                        ]),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width:  MediaQuery.of(context).size.width,
                        height: 60,
                          margin:EdgeInsets.only(left:10,right:10),
                        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                        child: Row(children: [
                          SizedBox(width: 5),
                          Icon(Icons.email, size: 30, color: Colors.black),
                          SizedBox(width: 10),
                          Text("aliNadir556@gmail.com", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
                        ]),
                      ),
                      SizedBox(height: 25),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                            margin:EdgeInsets.only(left:10,right:10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(children: [
                            SizedBox(width: 5),
                            Icon(Icons.phone, size: 30, color: Colors.black),
                            SizedBox(width: 10),
                            Text("03337063308", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
                          ]))
                    //colum
                     //container
              ]) //column
              //cont
        ); //scaff
  }
}

