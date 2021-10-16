import 'package:flutter/material.dart';
import 'package:helloworld/contants/constant.dart';


class myhome extends StatefulWidget {
  @override
  myhomeState createState() => myhomeState();
}

//
//mycont obj=new mycont();

class myhomeState extends State<myhome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Constant.backgroundcolor,
      body:ListView(children: [
        SizedBox(height:10),
        Container(
          margin:EdgeInsets.only(left:15,right: 15),
          width:MediaQuery.of(context).size.width,
          height:155,
          decoration: BoxDecoration(color: Constant.backgroundcolor),
        child:Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:AssetImage('assets/images/4.jpeg'),width:100,height:150,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:AssetImage('assets/images/7.jpeg'),width:100,height:150,fit:BoxFit.fill)
           )),
        ])),
       SizedBox(height:10),

          Container(alignment: Alignment.center,width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/9,margin: EdgeInsets.only(left:15,right:15), decoration: BoxDecoration(color: Colors.black), child: Text("What's this Academy for?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white))),
          SizedBox(height: 10),
          Container(padding: EdgeInsets.only(left:5,right:5,top:5),width: MediaQuery.of(context).size.width, margin: EdgeInsets.only(left:15,right:15),height: MediaQuery.of(context).size.height/4.5, decoration: BoxDecoration(color: Colors.black,), child: Text("This Academy is to further and boost up your skills in English. You will be provided with several awesome courses here. We gurantee you a full skill set after completing the courses on this platform", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white))),
          SizedBox(height: 10),
          Container(width: MediaQuery.of(context).size.width,height:320,decoration: BoxDecoration(color:Constant.backgroundcolor),margin: EdgeInsets.only(left:15,right:15),child:Column(children: [
            Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:AssetImage('assets/images/1.jpeg'),width:100,height:150,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:AssetImage('assets/images/2.jpeg'),width:100,height:150,fit:BoxFit.fill)
           )),
        ]),
        SizedBox(height:5),
        Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:AssetImage('assets/images/3.jpeg'),width:100,height:130,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:AssetImage('assets/images/5.jpeg'),width:100,height:130,fit:BoxFit.fill)
           )),
        ]),
          ],)),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height/5,
            margin: EdgeInsets.only(left:10,right:10),
            padding:EdgeInsets.only(left:5,right:5,top:10),
            decoration: BoxDecoration(
              color: Colors.black,
            
            ),
            child: Text("You will find really helpful group and panel discussions on trending topics. Here, we conduct every healthy competiton related to betterment of your skills", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white)),
          )
       ]) );
  }
}

