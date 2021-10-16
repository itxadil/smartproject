import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/authentication/authservices.dart';
import 'package:helloworld/contants/constant.dart';
import 'package:helloworld/mainfolder/main.dart';
import 'package:email_auth/email_auth.dart';
import 'package:provider/provider.dart';
//import 'myclass.dart';

class registerYourself extends StatefulWidget {
  @override
  _registerYourselfState createState() => _registerYourselfState();
}

textformfeild obj=new textformfeild();
class _registerYourselfState extends State<registerYourself> {

EmailAuth emailauth;
 final serviceauth _auth=new serviceauth();
  String _mail = " ";
  String _pass = " ";
  String _name = " ";
  // myClass obj = myClass();
  TextEditingController mailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();
  TextEditingController nameCont = TextEditingController();
  TextEditingController pCont = TextEditingController();

  String _city = " ";
  String _phone = " ";
  String _OTP=" ";
  TextEditingController otpcont=TextEditingController();
  String _validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Constant.backgroundcolor,
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Registration", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white))),
      body: SingleChildScrollView(child:Column(children: [
            SizedBox(height: 15),
            Text("Sign Up", style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.w800)),
            SizedBox(height: 30),
            Container(width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.6,
            
            margin: EdgeInsets.only(left:20,right:20),
            child:Form(
                key: _formKey,
                child: Column(children: [
                 TextFormField(
                            keyboardType: TextInputType.text,
                            controller: nameCont,
                            validator: (String a) {
                               if(a.length==0){
                                 return "enter a valid name";
                                }else{
                                  return null;
                                }
                            },
                            onSaved: (String a) {
                              this._name = a;
                            },
                        decoration: InputDecoration( fillColor: Colors.white,
                              filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.refresh)),
                      
                              hintText: "Jone",
                  
                            )),
                  SizedBox(height:10),
                  //obj.gettff(_phone, Icon(Icons.phone),"Please enter valid phone number","Your Phone Number", pCont),
                 TextFormField(
                            keyboardType: TextInputType.text,
                            controller: pCont,
                            validator: (String a) {
                               if(a.length==0){
                                 return "enter a valid number";
                                }else{
                                  return null;
                                }
                            },
                            onSaved: (String a) {
                              this._name = a;
                            },
                        decoration: InputDecoration( fillColor: Colors.white,
                              filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.phone)),
                      
                              hintText: "03167876677",
                  
                            )),
                  SizedBox(height:10),
                  //obj.gettff(_mail, Icon(Icons.email),"Please enter your email","Your email", mailCont),
                  TextFormField(
                            keyboardType: TextInputType.text,
                            controller: mailCont,
                            validator: (String a) {
                               if(!a.contains("@")){
                                 return "enter a valid email";
                                }else{
                                  return null;
                                }
                            },
                            onSaved: (String a) {
                              this._name = a;
                            },
                        decoration: InputDecoration( fillColor: Colors.white,
                              filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child: Container(margin: EdgeInsets.only(left:16),alignment: Alignment.center,width:100,height:30,decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
                    child: RawMaterialButton(child:Text('Send OTP',style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w400 )),onPressed: (){
                      setState(() async{
                        await sendOTP();
                        showDialog(context: context, builder: (BuildContext context){
                            return AlertDialog(
                              title: Text('OTP Sent',style: TextStyle(color:Colors.black,fontWeight:FontWeight.w500,fontSize:25 ),),
                              content: Text('OTP is sent to the given email address. Please verify and proceed to create your account',style: TextStyle(color:Colors.black,fontWeight:FontWeight.w400,fontSize:18 ),) ,
                              actions: [RawMaterialButton(child: Text('OK'),onPressed: (){
                                setState(() {
                                  Navigator.pop(context);
                                });
                              },)],
                            );
                        });
                      });
                    },)
                    ),),
                      
                              hintText: "none@none.com",
                  
                            )),
                         
                  SizedBox(height:10),
                     TextFormField(
                            keyboardType: TextInputType.text,
                            controller: otpcont,
                            validator: (String a) {
                               if(a.length==0){
                                 return "Enter valid OTP";
                                }else{
                                  return null;
                                }
                            },
                            onSaved: (String a) {
                              this._OTP = a;
                            },
                        decoration: InputDecoration( fillColor: Colors.white,
                              filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child: Container(margin: EdgeInsets.only(left:16),alignment: Alignment.center,width:100,height:30,decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
                    child: RawMaterialButton(child:Text('Verify',style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w400 )),onPressed: (){
                      setState(() async{
                     
                       await verifyotp();
                        showDialog(context: context, builder: (BuildContext context){
                         return AlertDialog(
                           title: Text('OTP Verification',style: TextStyle(color:Colors.black,fontSize: 25,fontWeight: FontWeight.w500 )),
                           content: Text('Your OTP is successfully verified. Press OK to proceed',style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w400 )),
                           actions: [RawMaterialButton(child: Text('OK'),onPressed: (){
                                setState(() {
                                  Navigator.pop(context);
                                });
                              },)],
                         );
                        });
                        
                      });
                    },)
                    ),),
                      
                              hintText: "OTP",
                  
                            )),
                            SizedBox(height:10),
                  //obj.gettff(_pass, Icon(Icons.security),"Please set a password","Set Password , i.e: 12345", passCont),
                TextFormField(
                            keyboardType: TextInputType.text,
                            controller: passCont,
                            validator: (String a) {
                               if(a.length<5){
                                 return "Set password of atleast 5 letters";
                                }else{
                                  return null;
                                }
                            },
                            onSaved: (String a) {
                              this._name = a;
                            },
                        decoration: InputDecoration( fillColor: Colors.white,
                              filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.security)),
                      
                              hintText: "12345",
                  
                            )),
                ]))),
                 
                  SizedBox(height: 50),
                  Container(
                      width: Constant.widthforbutton,
                      height: Constant.heightforbuttons,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RawMaterialButton(
                          child: Text("Create Account", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
                          onPressed: () {
                             Provider.of(context, listen: false);
                            setState(() async{
                              if (_formKey.currentState.validate()) {
                                  var result= await _auth.getuserdata(mailCont.text,passCont.text,nameCont.text,pCont.text);
                                if(result==null){
                                print('not registred');
                               }else
                            
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginclass()));
                          
                          }
                                              //}
                                          
                                      //SD
                              });
                          
                          }))
                 //form col

                 //form
          ])), //cont
    ); //scff
  }
       void sendOTP() async{
         emailauth=new EmailAuth(sessionName: "Test");
         var res=await emailauth.sendOtp(recipientMail: mailCont.text);
         if(res==null){
           print("Failed");
         }
         else
         print("successfull");
       }

       void verifyotp()async{
         var res=emailauth.validateOtp(recipientMail: mailCont.text, userOtp: otpcont.text);
             if(res==null){
           print("Failed");
         }
         else
         print("successfull");
       }

}

class textformfeild extends _registerYourselfState{
TextFormField gettff(String _name,Icon icon,String b,String c,TextEditingController txt){
  return TextFormField(
     
                      keyboardType: TextInputType.text,
                      controller: txt,
                      validator: (String a) {
                        if (a.length == 0) {
                          return b;
                        }
                      },
                      onSaved: (String a) {
                        _name = a;
                      },
                      decoration: InputDecoration(
                        suffixIcon: Padding(padding:EdgeInsetsDirectional.only(end:10),child:icon ,),
                        fillColor: Colors.white,
                        filled: true,
                        errorStyle: TextStyle(color: Colors.black,fontWeight:FontWeight.w300,fontSize:13),
                        //labelText: "Firstname",
                        hintStyle:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.black,width:5.0)),
                        hintText: c,
                     
                      ) //ID
                      
  );
 
}


}
