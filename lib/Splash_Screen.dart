import 'dart:async';

import 'package:fleekup/WelcomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget{
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds:4), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen(), ));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text('Classico',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400,color: Colors.white),)),
      ),
    );
  }
}