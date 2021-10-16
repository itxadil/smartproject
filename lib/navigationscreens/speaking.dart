import 'package:flutter/material.dart';
import 'package:helloworld/navigationscreens/afterlogin.dart';
import 'package:helloworld/contants/constant.dart';
import 'afterlogin.dart';

class entryClass extends StatefulWidget {
  @override
  _entryClassState createState() => _entryClassState();
}

class _entryClassState extends State<entryClass> {
  var _formKey = GlobalKey<FormState>();
  String _name = " ";
  String _mail = " ";
  String _phone = " ";
  String _city = " ";
  TextEditingController nameed = TextEditingController();
  TextEditingController mailed = TextEditingController();
  TextEditingController phoneed = TextEditingController();
  TextEditingController cityed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Constant.backgroundcolor,
        appBar: AppBar(title: Text("Speaking Course",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20))),
        body:ListView(children: [
              SizedBox(height: 10),
              Container(
                   width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4.9,
                padding:EdgeInsets.only(top:5,left:5,right:5),
                margin:EdgeInsets.only(left:10,right:10),
              
                decoration: BoxDecoration(color: Colors.black,),
                child: Text("It's a fact that english is spoken all over the world. We provide you with a 2- month course that will enable you to speak english fluently. In this course, we conduct group discussios,panel discussions and many more activities.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white)),
              ),
              SizedBox(height: 10),
              /*Container(
                  width: 290,
                  height: 300,
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Row(children: [
                      Expanded(child: Image(image: AssetImage('images/speakone.jpeg'), width: 150, height: 150, fit: BoxFit.fill)),
                      SizedBox(width: 5),
                      Expanded(child: Image(image: AssetImage('images/speaktwo.jpeg'), width: 150, height: 150, fit: BoxFit.fill)),
                    ]),
                    Row(children: [
                      Expanded(child: Image(image: AssetImage('images/speakingthree.jpeg'), width: 150, height: 150, fit: BoxFit.fill)),
                      SizedBox(height: 10),
                      Expanded(child: Image(image: AssetImage('images/speakingfour.jpeg'), width: 150, height: 150, fit: BoxFit.fill))
                    ])
                  ]) //col
                  ),*/
              SizedBox(height: 20),
             Container(width: MediaQuery.of(context).size.width,height:320,decoration: BoxDecoration(color:Constant.backgroundcolor),margin: EdgeInsets.only(left:15,right:15),child:Column(children: [
            Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://basicenglishspeaking.com/wp-content/uploads/2020/04/3000-most-common-words-in-English.jpg'),width:100,height:150,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://play-lh.googleusercontent.com/gx047RgJ46GmMSmHWPKL4Ax99mPe4_HqHXG7cDBhajnCllkPklFeXygnOeEEkPk3URUP'),width:100,height:150,fit:BoxFit.fill)
           )),
        ]),
        SizedBox(height:5),
        Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB27eYfuWvjNE_xzPrhhWzYNUD9JhcW9-4mYngwJcy_y836Jjaj1Wlt3lnzLzbFOcDY8c&usqp=CAU'),width:100,height:130,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://images.herzindagi.info/image/2020/Aug/english-speaking-main.jpg'),width:100,height:130,fit:BoxFit.fill)
           )),
        ]),
          ],)),
            
              Container(
                width: MediaQuery.of(context).size.width,
                  height:  MediaQuery.of(context).size.height/1.6,
                       padding:EdgeInsets.only(left:10,right:10),
                  margin:EdgeInsets.only(left:10,right:10),
                  decoration: BoxDecoration(
                    color: Constant.backgroundcolor,
                    
                  ),
                  child: Form(
                      key: _formKey,
                      child: Column(children: [
                        TextFormField(
                            keyboardType: TextInputType.text,
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
                              hintText: "Jones",
                    
                            )), //tff
                        SizedBox(height: 5),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid email";
                              }
                            },
                            onSaved: (String a) {
                              this._name = a;
                            },
                        decoration: InputDecoration( fillColor: Colors.white,
                              filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.email)),
                      
                              hintText: "none@none.com",
                  
                            )), //tff

                        SizedBox(height: 5),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid phone number";
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
                              hintText: "12345676543345",
                     
                            )), //tff
                        SizedBox(height: 5),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid city";
                              }
                            },
                            onSaved: (String a) {
                              this._city = a;
                            },
                            decoration: InputDecoration( fillColor: Colors.white,
                              filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.home)), hintText: "Dadu",)),
                        SizedBox(height: 20),

                 Container(width:Constant.widthforbutton,
                          height:Constant.heightforbuttons,
                       alignment: Alignment.center,
                          decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),child:RawMaterialButton(
                            child: Text("Submit", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
                            onPressed: () {
                              setState(() {
                                if (_formKey.currentState.validate()) {
                                  showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(content: Text("Congratulations,you have submitted your form for speaking course"), actions: [
                                          RawMaterialButton(
                                              child: Text("Ok"),
                                              onPressed: () {
                                                setState(() {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => afterloginclass()));
                                                });
                                              })
                                        ]); //AD
                                      }); //SD
                                }
                              });
                            }))//RB
                      ]) //column
                      ) //form
                  )
            ]) //LV
             //cont
        ); //scaffold
  }
}
