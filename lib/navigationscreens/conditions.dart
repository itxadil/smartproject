import 'package:flutter/material.dart';
import 'package:helloworld/navigationscreens/afterlogin.dart';
import 'package:helloworld/contants/constant.dart';
import 'afterlogin.dart';

class tcClass extends StatefulWidget {
  @override
  _tcClassState createState() => _tcClassState();
}

class _tcClassState extends State<tcClass> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(title: Text("Terms and conditions",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 20),)),
        body:  Column(children: [
              SizedBox(height: 20),
  Text("Terms of Use", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                margin:EdgeInsets.only(left:10,right:10),
                padding: EdgeInsets.only(left:5,right:5,top:5),
                decoration: BoxDecoration(color: Colors.black,),
                child: Text("These Terms of Use (“Terms”) govern your use of the websites and mobile applications provided by foodpanda (or referred to as “us”) (collectively the “Platforms”). Please read these Terms carefully. By accessing and using the Platforms, you agree that you have read, understood and accepted the Terms including any additional terms and conditions and any policies referenced herein, available on the Platforms or available by hyperlink. If you do not agree or fall within the Terms, please do not use the Platforms.The Platforms may be used by (i) natural persons who have reached 18 years of age and (ii) corporate legal entities, e.g companies. Where applicable, these Terms shall be subject to country-specific provisions as set out herein.Users below the age of 18 must obtain consent from parent(s) or legal guardian(s), who by accepting these Terms shall agree to take responsibility for your actions and any charges associated with your use of the Platforms and/or purchase of Goods. If you do not have consent from your parent(s) or legal guardian(s), you must stop using/accessing the Platforms immediately.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white)),
              ),
              SizedBox(height: 20),
              Row(children: [
                SizedBox(width:10),
                Transform.scale(scale: 2,
                child:Checkbox(
                    checkColor: Colors.black,
                    value: _isChecked,
                    onChanged: (bool a) {
                      setState(() {
                        _isChecked = a;
                      });
                    })),
                Expanded(child: Text("I have read and understand terms and conditions and will abide by these terms", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black))),
              ]),
              SizedBox(height:30),
                Container(width: Constant.widthforbutton,height: Constant.heightforbuttons,alignment: Alignment.center,decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),child:RawMaterialButton(
                    child: Text("Submit", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black)),
                    onPressed: () {
                      setState(() {
                        if (_isChecked == true) {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => afterloginclass()));
                        } else {
                          showDialog<String>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(content: Text("Please check the box then proceed!"), actions: [
                                  RawMaterialButton(
                                      child: Text("Ok"),
                                      onPressed: () {
                                        setState(() {
                                          Navigator.pop(context);
                                        });
                                      })
                                ]);
                              }); //SD
                        }
                      });
                    }))
             // ])
            ]) //lV
             //cont
        ); //scaff
  }
}
