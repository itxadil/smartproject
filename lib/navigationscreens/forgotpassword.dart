import 'package:flutter/material.dart';
import 'package:helloworld/contants/constant.dart';
import 'package:helloworld/mainfolder/main.dart';

class fpassword extends StatefulWidget {
  @override
  fpasswordState createState() => fpasswordState();
}

class fpasswordState extends State<fpassword> {
  var _formkey = GlobalKey<FormState>();
  String _mail = " ";
  TextEditingController mailCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Constant.backgroundcolor,
        appBar: AppBar(backgroundColor: Colors.blue, title: Text("Forgot Password",style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.w500))),
        body: SingleChildScrollView(child:Column(children: [
          SizedBox(height: 20),
           Text("Forgot Password", style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.w800)),
          SizedBox(height: 40),
      
         Container(padding: EdgeInsets.only(left: 10,right:10,top:5),margin:EdgeInsets.only(left:10,right:10),width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/5.6 ,decoration: BoxDecoration(color: Colors.white),child:Text("Enter your Personal Email that you entered while creating your account. After verification the password will be sent to provided link .", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))),
          SizedBox(height: 30),
            Container(
              height:Constant.heightforformcontainer,
              width:Constant.widthforformcontainer,
              
              decoration: BoxDecoration(color: Constant.backgroundcolor),
              child:Form(
              key: _formkey,
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (String a) {
                    if (a.length == 0) {
                      return "Please enter valid email";
                    }
                  },
                  onSaved: (String a) {
                    this._mail = a;
                  },
                  decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width:5.0),borderRadius: BorderRadius.circular(15.0)),suffixIcon:Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.email,color:Colors.black)), hintText: "none@none.com",hintStyle: TextStyle(fontWeight:FontWeight.w300,fontSize:20,color:Colors.black),errorStyle: TextStyle(fontWeight:FontWeight.w300,fontSize:13,color:Colors.black))) //TFF
              )),
          SizedBox(height: 40),
          Row(children: [
            SizedBox(width: 25),
            Container(
                width: MediaQuery.of(context).size.width/2.5,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: RawMaterialButton(
                    child: Text("Request", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
                    onPressed: () {
                      setState(() {
                        if (_formkey.currentState.validate()) {
                          showDialog<String>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(content: Text("Reset password link is sent to your given email address successfully", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink)), actions: [
                                  RawMaterialButton(
                                      child: Text("Ok"),
                                      onPressed: () {
                                        setState(() {
                                          Navigator.pop(context);
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => loginclass()));
                                        });
                                      })
                                ]);
                              });
                        }
                      });
                    })), //container
            SizedBox(width: 20),
            Container(
                width:MediaQuery.of(context).size.width/2.5,
                height: 35,
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(15)),
                child: RawMaterialButton(
                    child: Text("Cancel", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    })) //con
          ])
        ]) //column

    ));
  }
}
