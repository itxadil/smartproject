import 'package:flutter/material.dart';
import 'package:helloworld/contants/constant.dart';
import 'afterlogin.dart';
import 'package:helloworld/mainfolder/main.dart';

class del extends StatefulWidget {
  @override
  _delState createState() => _delState();
}

enum mylist {Hardtousetheapp,Idonothavetimetostudy,Idonotneedit,Thecirculamdoesnotvarry,Thelessonfeeisexpensive,other}

class _delState extends State<del> {
mylist _val=mylist.Hardtousetheapp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Constant.backgroundcolor,
        appBar: AppBar(title: Text("Delete your account",style:TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500))),
        body: Column(children:[
          SizedBox(height:20),
             Text("Select any reason below",style:TextStyle(color:Colors.black,fontSize:30,fontWeight:FontWeight.w400)),
              SizedBox(height:20),
               ListTile(
                 leading:Radio(
                   value:mylist.Hardtousetheapp,
                   groupValue: _val,
                   onChanged: (mylist val){
                     setState((){
                       _val=val;
                     });
                   }
                 ),
                 title: Text('Hard to use the app',style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400)),
               ),
              SizedBox(height: 10),
              ListTile(title: Text('I don\'t have time to study',style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400)),
              leading:Radio(
                value:mylist.Idonothavetimetostudy,
                groupValue: _val,
                onChanged:(mylist val){
                  setState((){
                   _val=val;
                  });
                }
              )
              ),
                  SizedBox(height: 10),
                  ListTile(
                    leading:Radio(groupValue: _val,value: mylist.Idonotneedit,onChanged: (mylist val){
                      setState((){
                        _val=val;
                      });
                    }),
                    title: Text("I don't need it",style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400)),
                  ),
                    SizedBox(height: 10),
                    ListTile(
                      title: Text("The circulam doesn't vary",style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400)),
                      leading:Radio(value: mylist.Thecirculamdoesnotvarry,groupValue: _val,onChanged: (mylist val){
                       setState((){ _val=val;});
                      },)
                    ),
                     SizedBox(height:10),
                       ListTile(
                    leading:Radio(groupValue: _val,value: mylist.Thelessonfeeisexpensive,onChanged: (mylist val){
                      setState((){
                        _val=val;
                      });
                    }),
                    title: Text("The lesson fee is expensive",style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400)),
                  ),
                    SizedBox(height:10),
                      ListTile(
                    leading:Radio(groupValue: _val,value: mylist.other,onChanged: (mylist val){
                      setState((){
                        _val=val;
                      });
                    }),
                    title: Text("Other",style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w400)),
                  ),
                SizedBox(height: 40),
              Container(
                       width:Constant.widthforbutton,
                       height:Constant.heightforbuttons,
                       alignment: Alignment.center,
                       decoration:BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
                child:RawMaterialButton(
                  child: Text("Delete account", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500)),
                  onPressed: () {
                    setState(() {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(content: Text("Congratulations! your account is deleted"), actions: [
                              RawMaterialButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>loginclass()));
                                    });
                                  })
                            ]);
                          }); //SD
                    });
                  }))
            ]));
  }
}
