import 'package:flutter/material.dart';
import 'package:helloworld/contants/constant.dart';

class tcaClass extends StatefulWidget {
  @override
  _tcaClassState createState() => _tcaClassState();
}

enum SingingCharacter { Mute, Vibration, SoundandVibration, Turnoffallalerts }
enum MyThemes { Light, Dark, SystemDefault }
enum AppReview { Good, Bad, Normal, Excellent }

class _tcaClassState extends State<tcaClass> {
  var _val = 4;

  SingingCharacter _character = SingingCharacter.Mute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Constant.backgroundcolor,
        appBar: AppBar(title: Text("Tutor chat settings",style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.white))),
        body:Column(children: [
          SizedBox(height:30),
          Text("Choose any one of the below",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black)),
          SizedBox(height:20),
              ListTile(
                title: const Text('Mute',style:TextStyle(fontSize:20,fontWeight:FontWeight.w400,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Mute,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
               SizedBox(height:20),
              ListTile(
                title: const Text('Vibration',style:TextStyle(fontSize:20,fontWeight:FontWeight.w400,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Vibration,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
               SizedBox(height:20),
              ListTile(
                title: const Text('Sound and Vibration',style:TextStyle(fontSize:20,fontWeight:FontWeight.w400,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.SoundandVibration,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
               SizedBox(height:20),
              ListTile(
                title: const Text('Turn off all alerts',style:TextStyle(fontSize:20,fontWeight:FontWeight.w400,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Turnoffallalerts,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
               SizedBox(height:30),
              Container(width:Constant.widthforbutton,height:Constant.heightforbuttons,decoration:BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
              child:RawMaterialButton(

                  child: Text("Save",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black)),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  }))
            ]) //cont
        );
  }
}

class tlaClass extends StatefulWidget {
  @override
  _tlaClassState createState() => _tlaClassState();
}

class _tlaClassState extends State<tlaClass> {
  SingingCharacter _character = SingingCharacter.Mute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tutuor login settings",style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.white))),
        body:Column(children: [
                   SizedBox(height:30),
          Text("Choose any one of the below",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black)),
          SizedBox(height:20),

              ListTile(
                title: const Text('Mute',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Mute,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
                          SizedBox(height:20),
              ListTile(
                title: const Text('Vibration',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Vibration,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
                          SizedBox(height:20),
              ListTile(
                title: const Text('Sound and Vibration',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.SoundandVibration,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              SizedBox(height:20),
              ListTile(
                title: const Text('Turn off all alerts',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Turnoffallalerts,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              SizedBox(height:30),
               Container(width:Constant.widthforbutton,height:Constant.heightforbuttons,decoration:BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
                child:RawMaterialButton(
                  child: Text("Save",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black)),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  })),
            ]) //cont
        );
  }
}

class cscClass extends StatefulWidget {
  @override
  _cscClassState createState() => _cscClassState();
}

class _cscClassState extends State<cscClass> {
  SingingCharacter _character = SingingCharacter.Mute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Customer service chatting",style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.white))),
        body:  Column(children: [

           SizedBox(height:30),
          Text("Choose any one of the below",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black)),
          SizedBox(height:20),
              ListTile(
                title: const Text('Mute',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Mute,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
                          SizedBox(height:20),
              ListTile(
                title: const Text('Vibration',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Vibration,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
                          SizedBox(height:20),
              ListTile(
                title: const Text('Sound and Vibration',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.SoundandVibration,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
                          SizedBox(height:20),
              ListTile(
                title: const Text('Turn off all alerts',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Turnoffallalerts,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              SizedBox(height:30),
               Container(width:Constant.widthforbutton,height:Constant.heightforbuttons,decoration:BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
                child:RawMaterialButton(
                  child: Text("Save",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black)),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  })),
            ]) //cont
        );
  }
}

class themeClass extends StatefulWidget {
  @override
  _themeClassState createState() => _themeClassState();
}

class _themeClassState extends State<themeClass> {
  MyThemes _them = MyThemes.Light;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Customer service chatting",style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.white))),
        body:Column(children: [

           SizedBox(height:30),
          Text("Choose any one of the below",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black)),
          SizedBox(height:20),
              ListTile(
                title: const Text('Light',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<MyThemes>(
                  value: MyThemes.Light,
                  groupValue: _them,
                  onChanged: (MyThemes value) {
                    setState(() {
                      _them = value;
                    });
                  },
                ),
              ),
                SizedBox(height:20),
              ListTile(
                title: const Text('Dark',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<MyThemes>(
                  value: MyThemes.Dark,
                  groupValue: _them,
                  onChanged: (MyThemes value) {
                    setState(() {
                      _them = value;
                    });
                  },
                ),
              ),
                SizedBox(height:20),
              ListTile(
                title: const Text('System default',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<MyThemes>(
                  value: MyThemes.SystemDefault,
                  groupValue: _them,
                  onChanged: (MyThemes value) {
                    setState(() {
                      _them = value;
                    });
                  },
                ),
              ),
              SizedBox(height:30),
              Container(width:Constant.widthforbutton,height:Constant.heightforbuttons,decoration:BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
              child:RawMaterialButton(
                  child: Text("Save",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black)),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  })),
            ]) //cont
        );
  }
}

class appreviewClass extends StatefulWidget {
  @override
  _appreviewClassState createState() => _appreviewClassState();
}

class _appreviewClassState extends State<appreviewClass> {
  AppReview _app = AppReview.Good;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("App Review settings",style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.white))),
        body:  Column(children: [

           SizedBox(height:30),
          Text("Choose any one of the below",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black)),
          SizedBox(height:20),
              ListTile(
                title: const Text('Good',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<AppReview>(
                  value: AppReview.Good,
                  groupValue: _app,
                  onChanged: (AppReview value) {
                    setState(() {
                      _app = value;
                    });
                  },
                ),
              ),
                         SizedBox(height:20),
              ListTile(
                title: const Text('Bad',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<AppReview>(
                  value: AppReview.Bad,
                  groupValue: _app,
                  onChanged: (AppReview value) {
                    setState(() {

                      _app = value;
                    });
                  },
                ),
              ),
                         SizedBox(height:20),
              ListTile(
                title: const Text('Normal',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<AppReview>(
                  value: AppReview.Normal,
                  groupValue: _app,
                  onChanged: (AppReview value) {
                    setState(() {
                      _app = value;
                    });
                  },
                ),
              ),
                         SizedBox(height:20),
              ListTile(
                title: const Text('Excellent',style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black)),
                leading: Radio<AppReview>(
                  value: AppReview.Excellent,
                  groupValue: _app,
                  onChanged: (AppReview value) {
                    setState(() {
                      _app = value;
                    });
                  },
                ),
              ),
              SizedBox(height:30),
               Container(width:Constant.widthforbutton,height:Constant.heightforbuttons,decoration:BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
              child:RawMaterialButton(
                  child: Text("Save",style: TextStyle(color:Colors.black,fontSize:25,fontWeight:FontWeight.w500),),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  })),
            ]) //cont
        );
  }
}

class settingClass extends StatefulWidget {
  @override
  _settingClassState createState() => _settingClassState();
}

class _settingClassState extends State<settingClass> {
  int _val = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white))),
        body:Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height/1.5,
          padding:EdgeInsets.only(left:25,right: 10),

          child:Column(children: [
          SizedBox(height:30),
           SizedBox(width:40),
             Text("Push Notifications Settings", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black)), //cont1
                         SizedBox(height:15,width:30),
              Container(
                width: MediaQuery.of(context).size.width/2,
                height:50,
                              decoration: BoxDecoration(color:Colors.blue),
                child:TextButton(
                  child: Text("Tutuor Chat Alarm", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500)),
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => tcaClass()));
                    });
                  })),
              SizedBox(height: 20,width:30),
               Container(
                width: MediaQuery.of(context).size.width/2,
                height:50,
                              decoration: BoxDecoration(color:Colors.blue),
                child:TextButton(
                  child: Text("Tutor login alert", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white)),
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => tlaClass()));
                    });
                  })),
              SizedBox(height: 20,width:30),
               Container(
                width: MediaQuery.of(context).size.width/1.4,
                height:50,
                              decoration: BoxDecoration(color:Colors.blue),
                child:
              TextButton(
                  child: Text("Customer services setting", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white)),
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => cscClass()));
                    });
                  })),
                  SizedBox(height:30,width:40),
     Text("Theme settings", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width/2.2,
                height:50,
                              decoration: BoxDecoration(color:Colors.blue),
                child:
              TextButton(
                  child: Text("Theme", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white)),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => themeClass()));
                    });
                  })),
                 SizedBox(height: 20,width:40),
 Text("Other settings", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)),
              SizedBox(height: 15,width:40),
               Container(
                width: MediaQuery.of(context).size.width/2.2,
                height:50,
                decoration: BoxDecoration(color:Colors.blue),
                child:
              TextButton(
                  child: Text("App Review", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white)),
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => appreviewClass()));
                    });
                  })),
            ]) //LV
    )
            //cont
    ); //scaff
  }
}
