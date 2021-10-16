import 'package:flutter/material.dart';
import 'package:helloworld/contants/constant.dart';
import 'afterlogin.dart';

class speakingClass extends StatefulWidget {
  @override
  _speakingClassState createState() => _speakingClassState();
}

class _speakingClassState extends State<speakingClass> {
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
        appBar: AppBar(title: Text("Entry Test course",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white))),
        body:  ListView(children: [
          SizedBox(height:20),

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4.9,
                padding:EdgeInsets.only(top:5,left:5,right:5),
                margin:EdgeInsets.only(left:10,right:10),
                decoration: BoxDecoration(
                  color: Colors.black,
                 
                ),
                child: Text("Alot of universities conduct entry test and it include major portion of English. The english portion includes grammer, passage and vocabullary. We conduct test to make students practise those types of questions. Our students scores awesome marks due to our hardwork and material with which they are provided.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white)),
              ), //cont
              SizedBox(height: 20),
             /* Container(
                  width: 320,
                  height: 350,
                  margin: EdgeInsets.only(top: 5, left: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    Row(children: [
                      Expanded(child: Image(image: AssetImage('images/entryone.jpeg'), width: 100, height: 130, fit: BoxFit.fill)),
                      //SizedBox(width: 5),
                      Expanded(child: Image(image: AssetImage('images/entrytwo.jpeg'), width: 100, height: 130, fit: BoxFit.fill)),
                    ]), //row
                    SizedBox(height: 5),
                    Row(children: [
                      Expanded(child: Image(image: AssetImage('images/entrythree.jpeg'), width: 100, height: 130, fit: BoxFit.fill)),
                      //SizedBox(width: 5),
                      Expanded(child: Image(image: AssetImage('images/englishfour.jpeg'), width: 100, height: 130, fit: BoxFit.fill)),
                    ]), //row
                  ]) //column
                  ), *///container for csspics
               Container(width: MediaQuery.of(context).size.width,height:320,decoration: BoxDecoration(color:Constant.backgroundcolor),margin: EdgeInsets.only(left:15,right:15),child:Column(children: [
            Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://step.pgc.edu/assets/uploads/2020/01/Entrance-Test.jpg'),width:100,height:150,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDPQ57ruWDFae8Z2A2ZrCeG4t3zSKFnbASKfqYuzXtvmVqzDUQ1hNl5qvg_nULAFHHcZU&usqp=CAU'),width:100,height:150,fit:BoxFit.fill)
           )),
        ]),
        SizedBox(height:5),
        Row(children:[
           SizedBox(height:25),
           Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYwwk1cZpVal9m3mh57pd6Ah0I9aSjT5hGaeH_45nvmZLjXVTWkEW2bnH4tbVF4nYQgTI&usqp=CAU'),width:100,height:130,fit:BoxFit.fill)
           )),
           SizedBox(width:10),
             Expanded(child:ClipRRect(
            borderRadius:BorderRadius.circular(10),
            child:Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBR_W8BQ6v8Rxnc9dg6SOC2MxboC8H_WkRkQ&usqp=CAU'),width:100,height:130,fit:BoxFit.fill)
           )),
        ]),
          ],)),
          SizedBox(height: 10),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  padding:EdgeInsets.only(left:10,right:10),
                  margin:EdgeInsets.only(left:10,right:10),
                  decoration: BoxDecoration(color: Constant.backgroundcolor, borderRadius: BorderRadius.circular(10)),
                  child: Form(
                      key: _formKey,
                      child: Column(children: [
                        TextFormField(
                            keyboardType: TextInputType.text,
                            controller: nameed,
                            validator: (String a) {
                              if (a.length == 0) {
                                return "Please enter valid email";
                              }
                            },
                            onSaved: (String a) {
                              this._name = a;
                            },
                            decoration: InputDecoration(filled: true,fillColor: Colors.white,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.refresh)),hintText: "Jone",) //ID
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
                            decoration: InputDecoration(fillColor: Colors.white,filled:true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
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
                              filled:true,
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
                                return "Please enter valid city name";
                              }
                            },
                            onSaved: (String a) {
                              this._city = a;
                            },
                            decoration: InputDecoration(fillColor: Colors.white,filled: true,hintStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                              errorStyle: TextStyle(color:Colors.black,fontSize: 13,fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 5),borderRadius: BorderRadius.circular(15)),
                              suffixIcon: Padding(padding: EdgeInsetsDirectional.only(end:10),child:Icon(Icons.home)), hintText: "Dadu",)), //tff
                        SizedBox(height: 30),
                            Container(width:Constant.widthforbutton,
                          height:Constant.heightforbuttons,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),child:RawMaterialButton(
                            child: Text("Submit", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
                            onPressed: () {
                              setState(() {
                                if (_formKey.currentState.validate()) {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(content: Text("Congratulations, you have submitted form for Entry test course"), actions: [
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
                            }))
                      ]) //col for form
                      ) //form for form
                  ) //container for form
            ]) //lV
            //con
        ); //scaff
  }
}
