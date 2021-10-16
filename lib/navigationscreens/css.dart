import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helloworld/contants/constant.dart';
import 'afterlogin.dart';

class cssClass extends StatefulWidget {
  @override
  _cssClassState createState() => _cssClassState();
}

class _cssClassState extends State<cssClass> {
  var _formKey = GlobalKey<FormState>();
  String _name = " ";
  String _phone = " ";
  String _city = " ";
  String _mail = " ";
  TextEditingController nameed = TextEditingController();
  TextEditingController phoneed = TextEditingController();
  TextEditingController cityed = TextEditingController();
  TextEditingController mailed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Constant.backgroundcolor,
        appBar: AppBar(title: Text("Css Courses",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500))),
        body:ListView(children: [
        

          SizedBox(height: 10),
              Container(
               width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4.9,
                padding:EdgeInsets.only(top:5,left:5,right:5),
                margin:EdgeInsets.only(left:10,right:10),
                decoration: BoxDecoration(
                  color: Colors.black,
                 
                ),
                child: Text("This is a CSS preparatory course that will cover every topic that is related to English Portion in CSS exam. Topics like essays, summaries, precise writing are much more focused. We guarantee that after completing this course, one will be able to Clear the english portion in CSS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white)),
              ),
              SizedBox(height:10),
          Container(width: MediaQuery.of(context).size.width,height:320,decoration: BoxDecoration(color:Constant.backgroundcolor),margin: EdgeInsets.only(left:15,right:15),child:Column(children: [
            Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://paktestbooks.com/wp-content/uploads/2019/01/Dogar-CSS-Guide-Compulsory-Subjects-950.png'),width:100,height:150,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://photo-cdn.urdupoint.com/media/2020/02/_3/420x350/pic_1581516710.jpg'),width:100,height:150,fit:BoxFit.fill)
           )),
        ]),
        SizedBox(height:5),
        Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL_I0rw-ASS6OHav89rIbdhhzcyKJihZ_5CQ&usqp=CAU'),width:100,height:130,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuFEZi-wk0O4InzeLQgzzC0X3mo-wLSXw6UA&usqp=CAU'),width:100,height:130,fit:BoxFit.fill)
           )),
        ]),
          ],)),
           //cont for text
              /*Container(
                  width: 320,
                  height: 350,
                  margin: EdgeInsets.only(top: 5, left: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    Row(children: [
                      Expanded(child: Image(image: AssetImage('images/cssone.jpeg'), width: 150, height: 150, fit: BoxFit.fill)),
                      SizedBox(width: 5),
                      Expanded(child: Image(image: AssetImage('images/csstwo.jpeg'), width: 150, height: 150, fit: BoxFit.fill)),
                    ]), //row
                    SizedBox(height: 5),
                    Row(children: [
                      Expanded(child: Image(image: AssetImage('images/cssthree.jpeg'), width: 150, height: 150, fit: BoxFit.fill)),
                      SizedBox(width: 5),
                      Expanded(child: Image(image: AssetImage('images/cssfour.jpeg'), width: 150, height: 150, fit: BoxFit.fill)),
                    ]), //row
                  ]) //column
                  ),*/ //container for csspics
  //cont for text
              SizedBox(height: 20),
              Container(
                            width: MediaQuery.of(context).size.width,
                  height:  MediaQuery.of(context).size.height/2,
                       padding:EdgeInsets.only(left:10,right:10),
                  margin:EdgeInsets.only(left:10,right:10),
                  decoration: BoxDecoration(color: Constant.backgroundcolor,),
                  child: Form(
                      key: _formKey,
                      child: Column(children: [
                        TextFormField(
                            keyboardType: TextInputType.text,
                            controller: nameed,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid name";
                              }
                            },
                            onSaved: (String a) {
                              this._name = a;
                            },
                            decoration: InputDecoration( fillColor: Colors.white,filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.email)),hintText: "Jone", ) //ID
                            ), //tff
                        SizedBox(height: 10),
                        TextFormField(
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
                            decoration: InputDecoration( fillColor: Colors.white,filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.email)), hintText: "none@none.com",)), //tff
                        SizedBox(height: 10),
                        TextFormField(
                            keyboardType: TextInputType.number,
                            controller: phoneed,
                            validator: (String a) {
                              if (a.length < 11) {
                                return "Please enter number greater than 10";
                              }
                            },
                            onSaved: (String a) {
                              this._phone = a;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.phone)),
                              hintText: "2344234565434",
                          
                            )), //tff
                        SizedBox(height: 10),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            controller: cityed,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please entter valid city name";
                              }
                            },
                            onSaved: (String a) {
                              this._city = a;
                            },
                            decoration: InputDecoration( fillColor: Colors.white,filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.home)), hintText: "Dadu",)), //tff
                        SizedBox(height: 20),
                  
                      ]) //col for form
                      ) //form for form
                  ), //container for form
                  SizedBox(height:10),
                  
                   SafeArea(bottom: true,minimum: EdgeInsets.only(bottom:30),child:Container(
                          width:Constant.widthforbutton,
                          height:Constant.heightforbuttons,
                            margin:EdgeInsets.only(left:20,right:20),
                         alignment: Alignment.center,
                          decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
                        child:RawMaterialButton(
                            child: Text("Submit", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
                            onPressed: () {
                              setState(() {
                                if (_formKey.currentState.validate()) {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(content: Text("Congratulations, you have submitted form for CSS course"), actions: [
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
                              }); //setState
                            })))
            ]) //ListView

             //cont

        ); //scaff
  }
}

