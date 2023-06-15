import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futt/main.dart';

class login extends StatelessWidget{
  var namelogin=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text('Login Page'),backgroundColor: Colors.yellow,),
     body: Container(
       color: Colors.black,
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               child: Text('Please Enter your Name',style: TextStyle(color: Colors.yellow),),
             ),
             Container(
               width: 300,
               child: TextField(

                 controller: namelogin,
                 keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.yellow),
                 decoration: InputDecoration(
                   hintText: 'Enter your name here',
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(21),
                     borderSide: BorderSide(color: Colors.yellow,
                     width: 1,
                     ),


                   ),
                 ),
               ),
             ),
             Container(height: 25,),
             ElevatedButton(
               style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow, minimumSize: Size(170, 50)),

               child: Text('Enter', style: TextStyle(color: Colors.black),),
               onPressed: (){

                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(namelogin.text.toString()),),);
                 },
             ),
           ],
         ),
       ),
     ),
   );
  }

}