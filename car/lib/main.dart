


import 'package:flutter/material.dart';
import 'package:mycar_app/forgotp.dart';
import 'package:mycar_app/login.dart';
import 'package:mycar_app/register.dart';
import 'package:mycar_app/signin.dart';
import 'slotdataWidget.dart';
import 'pincode.dart';

void main() {
  runApp(
  const MyApp()
);
}

class MyApp  extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'pincode',
    routes: {
      'login' : (context) => MyLogin(),
      'register' : (context) => MyRegister(),
      'forgotp'  : (context) => MyPass(),
      'signin'   : (context) => MySignin() ,
      'slotdata' :(context) => SlotdataWidget(),
      'pincode'  : (context) => Pincode()
    }
    
  );
  }
}