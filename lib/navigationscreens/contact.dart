import 'package:flutter/material.dart';
import 'package:helloworld/contants/constant.dart';
import 'afterlogin.dart';

class contactClass extends StatefulWidget {
  @override
  _contactClassState createState() => _contactClassState();
}

class _contactClassState extends State<contactClass> {
  var _formKey = GlobalKey<FormState>();
  String _name = " ";
  String _mail = " ";
  String _message = " ";
  String _Amessage = " ";
  TextEditingController nameed = TextEditingController();
  TextEditingController mailed = TextEditingController();
  TextEditingController med = TextEditingController();
  TextEditingController amed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backgroundcolor,
        appBar: AppBar(title: Text("Convey your message",style:TextStyle(color:Colors.white,fontWeight:FontWeight.w500,fontSize:20))),
        body:  Column(children: [
               SizedBox(height:30),
             Text("How can we help you?", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black)),
              SizedBox(height:40),
              Container(width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height/3.5,
              decoration:BoxDecoration(color:Constant.backgroundcolor),
              margin: EdgeInsets.only(left:20,right:20),
                child:Form(
                      key: _formKey,    
                       child:Column(children:[TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: mailed,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid email";
                              }
                            },
                            onSaved: (String a) {
                              this._mail = a;
                            },
                            decoration: InputDecoration( fillColor: Colors.white,
                              filled: true,suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10),child: Icon(Icons.email)),errorStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:13),border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.black,width:5)),hintText: "none@none.com",hintStyle:TextStyle(fontWeight:FontWeight.w400,color:Colors.black,fontSize:20),)), //tff
                        SizedBox(height: 30),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            controller: med,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid message";
                              }
                            },
                            onSaved: (String a) {
                              this._message = a;
                            },
                            decoration: InputDecoration(  fillColor: Colors.white,
                              filled: true,hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20),errorStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:13),border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.black,width: 5)),suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child: Icon(Icons.message),),hintText: "Write your message here", ))])), //tf
              ),
                        SizedBox(height: 30),
                        Container(
                          width: Constant.widthforbutton,
                          height: Constant.heightforbuttons,
                        alignment: Alignment.center,
                          decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
                        child:RawMaterialButton(
                            child: Text("Send message", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
                            onPressed: () {
                              setState(() {
                                if (_formKey.currentState.validate()) {
                                  showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(content: Text("Congratulations, your message is sent!"), actions: [
                                          RawMaterialButton(
                                              child: Text("Ok"),
                                              onPressed: () {
                                                setState(() {
                                               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => afterloginclass()));
                                                });
                                              })
                                        ]);
                                      });
                                }
                              });
                            })
                        )
                      ]) //col
                      //form
                  
            ); //scaff
  }
}
