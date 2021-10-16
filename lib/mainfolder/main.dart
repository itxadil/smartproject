import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helloworld/authentication/authservices.dart';
import 'package:helloworld/contants/constant.dart';
import '../navigationscreens/signup.dart';
import '../navigationscreens/forgotpassword.dart';
import '../navigationscreens/afterlogin.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: loginclass()));
}

class loginclass extends StatefulWidget {
  @override
  _loginclassState createState() => _loginclassState();
}

class _loginclassState extends State<loginclass> {
  //dbUtil cobj = dbUtil();
  //List<Note> myList;
  final serviceauth _auth=new serviceauth();
  var _formKey = GlobalKey<FormState>();
  String _mail = " ";
  String _pass = " ";
  bool _isChecked = false;
  TextEditingController mailcont = TextEditingController();
  TextEditingController passcont = TextEditingController();


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constant.backgroundcolor,
        appBar: AppBar(backgroundColor:Colors.blue,title: Text("The Smart English Coaching Center",style:TextStyle(fontWeight:FontWeight.w400,fontSize:20,color:Colors.white))),
        body:SingleChildScrollView(child: Column(children: [
          SizedBox(height: 20),
          //Image(image: AssetImage('images/smart.jpeg'), width: 200, height: 100),
          //SizedBox(height: 10),
           Text("Log In", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800,color:Colors.black)), //container
          //SizedBox(width: 20),
          SizedBox(height: 15),
      Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/2.9,
        margin: EdgeInsets.only(left:20,right:20),
        decoration: BoxDecoration(color:Constant.backgroundcolor),
       
           child:Form(
                  key: _formKey,
                  child: Column(children: [
                   
                    SizedBox(height:20),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: mailcont,
                      validator: (String a) {
                        if (a.length == 0) {
                          return "Please enter email";
                        }
                      },
                      onSaved: (String a) {
                        this._mail = a;
                      },
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color:Colors.black,fontSize:13,fontWeight:FontWeight.w300),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10.0),child:Icon(Icons.email,color:Colors.black)),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:Colors.black,width:5 )),
                      hintText: "none@gmail.com",hintStyle: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:20)), //boxDecoration
                    ), //TFF
                    
                    
                    SizedBox(height: 20),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        controller: passcont,
                        validator: (String b) {
                          if (b.length < 5) {
                            return "Password must be >=5";
                          }
                        },
                        onSaved: (String a) {
                          this._pass = a;
                        },
                        decoration: InputDecoration(fillColor: Colors.white,filled: true,errorStyle: TextStyle(color:Colors.black,fontSize:13,fontWeight:FontWeight.w300),border:OutlineInputBorder(borderSide:BorderSide(color:Colors.black,width:5),borderRadius:BorderRadius.circular(15),),hintStyle:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400),hintText: "12345", suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10),child:Icon(Icons.security,color: Colors.black,))) //ID
                        ), //TFF
                    SizedBox(height: 20),
                    
                   
                      Row(children:[
                        Transform.scale(scale:1,child:Checkbox(
                          checkColor: Colors.white,
                          
                          //fillColor: Colors.black,
                          value: _isChecked,
                          onChanged: (bool a) {
                            setState(() {
                              _isChecked = a;
                            });
                          })), //checkbox
                          SizedBox(width:5),
                          Text("Remember me", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
                      ])
                  ]))),
                      
                     
                    SizedBox(height: 20),
                    Container(
                    width:Constant.widthforbutton,
                    height:Constant.heightforbuttons,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(15)),
                    child:RawMaterialButton(
                        child: Text("Login", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                        onPressed: ()  {
                            setState(() async{
                              dynamic res=await _auth.loginforuser(mailcont.text, passcont.text);
                          if (_formKey.currentState.validate()){
                             dynamic res=
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=>afterloginclass()
                             )));
                          }
                            });
                        
                        })), //RB
                    SizedBox(height: 25),
                     RawMaterialButton(
                          child: Text("Forget Password?", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500)),
                          onPressed: () {
                            setState(() {
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=>fpassword()
                            
                         
                         )));
                            });
                          }), //RB
                        SizedBox(height:40),
                     
                            Row(
                              children:[
                                
                            SizedBox(width:50),
                        Text("Don't have an", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400)),
                        SizedBox(width:5),
                        RawMaterialButton(
                          child: Text("account?", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w900)),
                          onPressed: () {
                            setState(() {
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=>registerYourself()
                            
                         
                         )));
                            });
                          }), //RB
                              ]),
                        SizedBox(height:30),
                      Container(
                    width:Constant.widthforbutton,
                    height:Constant.heightforbuttons,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color:Colors.black,borderRadius:BorderRadius.circular(15)),
                    child:RawMaterialButton(
                        child: Text("Sign Up", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          setState(() {
                         
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=>registerYourself()
                              )));
                            });
                        }
  )), //RB
                        
                   //column
                  
        ]) //column
        )); //scaffold
  }
}
