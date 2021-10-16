import 'package:flutter/material.dart';
import 'coaching.dart';
import 'afterlogin.dart';
import 'entry.dart';
import 'css.dart';
import 'speaking.dart';
class courseClass extends StatefulWidget {
  @override
  _courseClassState createState() => _courseClassState();
}

class _courseClassState extends State<courseClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color(0xffE5E5E5),
        //appBar: AppBar(title: Text("Courses", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))),
        body: ListView(children: [
          SizedBox(height: 30),
               SizedBox(width:50),
           Container(child:Text("Courses",style:TextStyle(color:Colors.black,fontWeight:FontWeight.w500,fontSize:20)),width: MediaQuery.of(context).size.width,height: 22,decoration: BoxDecoration(color:Color(0xffE5E5E5),),margin: EdgeInsets.only(left:16),),
               SizedBox(height:30),
                Container(width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/7.5,margin:EdgeInsets.only(left:10,right:10),decoration:BoxDecoration(color:Colors.blue,borderRadius:BorderRadius.circular(15)),child:RawMaterialButton(
                    child: ListTile(
                      leading: Icon(Icons.book,color:Colors.black),
                             trailing: Icon(Icons.arrow_forward_ios ,color:Colors.black),
                      title: Text("Coaching course",style:TextStyle(fontWeight:FontWeight.w500,fontSize:20,color:Colors.black)),
                      subtitle: Text("A 6-month long course. Tap to see furthur details",style:TextStyle(fontWeight:FontWeight.w300,fontSize:15,color:Colors.black)),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => coachingClass()));
                      });
                    })), //RB
                SizedBox(height: 15),
                 Container(width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/7.5,margin:EdgeInsets.only(left:10,right:10),decoration:BoxDecoration(color:Colors.blue,borderRadius:BorderRadius.circular(15)),child:RawMaterialButton(
                    child: ListTile(
                       leading: Icon(Icons.book,color:Colors.black),
                             trailing: Icon(Icons.arrow_forward_ios ,color:Colors.black),
                      title: Text("CSS Preparation Course",style:TextStyle(fontWeight:FontWeight.w500,fontSize:20,color:Colors.black)),
                      subtitle: Text("A 6-month long course. Tap to see furthur details",style:TextStyle(fontWeight:FontWeight.w300,fontSize:15,color:Colors.black)),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cssClass()));
                      });
                    })), //raised
                SizedBox(height: 20),
                 Container(width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/7.5,margin:EdgeInsets.only(left:10,right:10),decoration:BoxDecoration(color:Colors.blue,borderRadius:BorderRadius.circular(15)),child:RawMaterialButton(
                    child: ListTile( leading: Icon(Icons.book,color:Colors.black),
                             trailing: Icon(Icons.arrow_forward_ios ,color:Colors.black),title: Text("Entry Test Course",style:TextStyle(fontWeight:FontWeight.w500,fontSize:20,color:Colors.black)), subtitle: Text("A 4-month long course for entry test preparation. Tap to see futhur details",style:TextStyle(fontWeight:FontWeight.w300,fontSize:15,color:Colors.black))),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => speakingClass()));
                      });
                    })),
                SizedBox(height: 20),
                 Container(width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/7.5,margin:EdgeInsets.only(left:10,right:10),decoration:BoxDecoration(color:Colors.blue,borderRadius:BorderRadius.circular(15)),child:RawMaterialButton(
                    child: ListTile(
                       leading: Icon(Icons.book,color:Colors.black),
                             trailing: Icon(Icons.arrow_forward_ios ,color:Colors.black),
                      title: Text("English Speaking Course",style:TextStyle(fontWeight:FontWeight.w500,fontSize:20,color:Colors.black)),
                      subtitle: Text("A 2-month long course. Tap to see furthur details",style:TextStyle(fontWeight:FontWeight.w300,fontSize:15,color:Colors.black)),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => entryClass()));
                      });
                    })),
    //conta
        ]) //big col
        ); //scaff
  }
}

