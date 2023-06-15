import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futt/login.dart';
import 'package:futt/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){

    super.initState();
    Timer(Duration(seconds: 2), (){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login(),),);
    },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,

        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
               backgroundImage: AssetImage('lib/images/splash.jpg'),
                radius: 100,
                  ),
              Container(height: 15,),
              Text('T.S.P Solver', style: TextStyle(fontSize: 35),),
            ],

          ),
        ),



      ),
    );
  }
}