import 'package:flutter/material.dart';
import 'package:futt/aboutus.dart';
import 'package:futt/calculate.dart';
import 'package:futt/login.dart';
import 'package:futt/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  var namefromlogin;
  var citytocalculate=TextEditingController();
  MyHomePage(this.namefromlogin);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text('Hello, $namefromlogin', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800, color: Colors.yellow),),
      ),
      body: Column(
        children:[
             Expanded(
               flex: 1,
               child: Container(
                 decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(100))
                ),
                child: Center(
                  child:
                      ElevatedButton(onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> Calculate()));
                  },
                    child: Text('Calculate', style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(minimumSize: Size(150, 50),backgroundColor: Colors.yellow),
                  ),
                ),
        ),
             ),


             Expanded(
               flex: 1,
               child: Container(

                color: Colors.black,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(100))

                  ),
                  child: Center(
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> aboutus()));
                    },
                      child: Text('About Us', style: TextStyle(color: Colors.yellow),),
                      style: ElevatedButton.styleFrom(minimumSize: Size(150, 50),backgroundColor: Colors.black),
                    ),
                  ),
                ),
            ),
             ),


      ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

