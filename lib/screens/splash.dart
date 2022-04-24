import 'dart:async';


import 'package:flutter/material.dart';
import 'package:planner/main.dart';
import 'package:planner/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void intistate(context){
    super.initState();
    // splash screen that redirects to home page after 3 sec
    Timer(Duration(seconds: 3), (() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Main() )) ));

  }
 
 //Splash screen image
@override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset("/images/Asset 2.png"),

      
    );
  }
}