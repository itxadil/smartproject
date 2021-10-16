import 'package:flutter/material.dart';
import 'package:helloworld/contants/constant.dart';
import 'afterlogin.dart';
class coachingClass extends StatefulWidget {
  @override
  _coachingClassState createState() => _coachingClassState();
}

class _coachingClassState extends State<coachingClass> {
  String _name = " ";
  String _mail = " ";
  String _phone = " ";
  String _class = " ";
  var _formKey = GlobalKey<FormState>();
  TextEditingController nameedit = TextEditingController();
  TextEditingController mailedit = TextEditingController();
  TextEditingController phoneedit = TextEditingController();
  TextEditingController classedit = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Constant.backgroundcolor,
        appBar: AppBar(title: Text("Coaching Course",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),)),
        body:ListView(children: [
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/6.2,
                margin: EdgeInsets.only(left:10,right:10),
                padding: EdgeInsets.only(left: 5,top:5),
                decoration: BoxDecoration(
                  color: Colors.black,
                 
                ),
                child: Text("Coaching course is to introduce students to basics of English language.In this course, they are taught grammer along with vocabullary. We conduct test every week to enhance the skills of students.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white)),
              ), //cont
              SizedBox(height:20),
               Container(width: MediaQuery.of(context).size.width,height:320,decoration: BoxDecoration(color:Constant.backgroundcolor),margin: EdgeInsets.only(left:15,right:15),child:Column(children: [
            Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://mir-s3-cdn-cf.behance.net/project_modules/disp/c3a2016134938.56026492e4c68.jpg'),width:100,height:150,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlgYLcOQSdenR7BmwlMj5BUwHWYhx61N1JZsfH8Rvlvju3rrYf7o3PdOjSBGoPYMv15Oc&usqp=CAU'),width:100,height:150,fit:BoxFit.fill)
           )),
        ]),
        SizedBox(height:5),
        Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA9eGBr8x2ONPuRWDkbXECpGxaUY-YjdqyvA&usqp=CAU'),width:100,height:130,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxRLKqfvoETrEaSyIh7QtRYbxGHPatRXV-Nw&usqp=CAU'),width:100,height:130,fit:BoxFit.fill)
           )),
        ]),
          ],)),
          SizedBox(height:10),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height:  MediaQuery.of(context).size.height/2,
                  margin:EdgeInsets.only(left:10,right:10),
                  padding:EdgeInsets.only(left:20,right:20),
                  decoration: BoxDecoration(
                    color:Color(0xffE5E5E5),
                    //borderRadius: BorderRadius.circular(10),
                  ),
                  child: Form(
                      key: _formKey,
                      child: Column(children: [
                        TextFormField(
                            keyboardType: TextInputType.text,
                            controller: nameedit,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid name";
                              }
                            },
                            onSaved: (String a) {
                              this._name = a;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.refresh)),
                              hintText: "Jone",
                      
                              //fillcolor: Colors.black,
                            )), //tff
                        SizedBox(height: 10),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: mailedit,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid email";
                              }
                            },
                            onSaved: (String a) {
                              this._mail = a;
                            },
                            decoration: InputDecoration( fillColor: Colors.white,filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.email)), hintText: "none@none.com", )), //tff
                        SizedBox(height: 10),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            controller: classedit,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid class name";
                              }
                            },
                            onSaved: (String a) {
                              this._class = a;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                               hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.cast_for_education_sharp)),
                              //labelText: "Class name",
                              hintText: "Matric",
                             // icon: Icon(Icons.book, color: Colors.black),
                              //fillcolor: Colors.black,
                            )), //tff
                        SizedBox(height: 10),
                        TextFormField(
                            keyboardType: TextInputType.number,
                            controller: phoneedit,
                            validator: (String a) {
                              if (a.length < 11) {
                                return "Please enter valid number";
                              }
                            },
                            onSaved: (String a) {
                              this._phone = a;
                            },
                            decoration: InputDecoration( fillColor: Colors.white,filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.phone)),hintText: "23456787654", )), //tff
                   
                        
                      ]))),
                           SizedBox(height: 10),
                      SafeArea(left: true,minimum: EdgeInsets.only(bottom: 30),child:Container(
                        alignment: Alignment.center,
                          width:Constant.widthforbutton,
                          height:Constant.heightforbuttons,
                          margin:EdgeInsets.only(left:20,right:20),
                          decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
                       child: RawMaterialButton(
                            child: Text("Submit", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
                            onPressed: () {
                              setState(() {
                                if (_formKey.currentState.validate()) {
                                  showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(content: Text("Congratulations, you have submitted the form", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink)), actions: [
                                          RawMaterialButton(
                                              child: Text("Ok"),
                                              onPressed: () {
                                                setState(() {
                                                  Navigator.pop(context);
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => afterloginclass()));
                                                });
                                                //}
                                              })
                                        ]);
                                      }); //SD
                                }
                              });
                            })))
            ]) //listview
             //cont
        ); //scaff
  }
}
