import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aboutus extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('About Us'),
        backgroundColor: Colors.yellow,
          ),
      
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [
            Container(height: 5,),

            Container(
                child: Center(child: Text('GET IN TOUCH', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),)),
            ),

            Divider(height: 2,color: Colors.white,),

            Container(height: 40,),
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/mao.jpg'),
              radius: 50,
            ),

            Container(height: 10,),
            Text('ADDRESS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.yellow)),
            Text('XYZ Developers', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.white)),
            Text('DA-IICT College,', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
            Text('DA-IICT Road, Nr. Reliance Cross Road,', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
            Text('Gandhinagar, Gujarat', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
            Text('PIN: 3820007', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),

            Container(height: 40,),
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/caller.jpg'),
              radius: 50,
            ),

            Container(height: 10,),
            // Text('COMMUNICATION:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
            Text('Mobile no.', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.yellow)),
            Text('+91 9904061074', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
            Text('+91 6359027911', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
            Text('Email:', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.yellow)),

            Text('tsp@gmail.com', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
            Text('tsp_helpdesk@gmail.com', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),

            Container(height: 40,),
            Divider(height: 2,color: Colors.white,),

            Container(height: 5,),

            Container(
              child: Center(child: Text('Creator\'s Info.', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),),),
            ),

            Container(height: 5,),

            Divider(height: 2,color: Colors.white,),
            Container(height:40 ,),

            Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(width: 2, color: Colors.green),
                      ),
                      child: Column(
                        children: [
                          Container(height: 20,),
                          CircleAvatar(
                            backgroundImage: AssetImage('lib/images/priyank.jpg'),
                            radius: 100,
                          ),

                          Container(height: 10,),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Name:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blue)),

                                Text('Priyank Asodariya', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
                              ],
                            ),
                          ),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Email: ', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.blue)),
                              Text('asodariyapriyank@gmail.com', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
                            ],
                          ),
                          Text('Studying At DA-IICT', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(height: 40,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(width: 2, color: Colors.green),
                      ),
                      child: Column(
                        children: [
                          Container(height: 20,),
                          CircleAvatar(
                            backgroundImage: AssetImage('lib/images/nee3.jpg'),
                            radius: 100,
                          ),

                          Container(height: 10,),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Name:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blue)),

                                Text('Vasoya Neel', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Email: ', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.blue)),
                              Text('vneelnareshbhai@gmail.com', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
                            ],
                          ),
                          Text('Studying At DA-IICT', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(height: 40,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(width: 2, color: Colors.green),
                      ),
                      child: Column(
                        children: [
                          Container(height: 20,),
                          CircleAvatar(
                            backgroundImage: AssetImage('lib/images/vraj.jpg'),
                            radius: 100,
                          ),

                          Container(height: 10,),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Name:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blue)),

                                Text('Vraj Khokhariya', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Email: ', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.blue)),
                              Text('khokhariyavraj@gmail.com', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
                            ],
                          ),
                          Text('Studying At DA-IICT', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(height: 40,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(width: 2, color: Colors.green),
                      ),
                      child: Column(
                        children: [
                          Container(height: 20,),
                          CircleAvatar(
                            backgroundImage: AssetImage('lib/images/anshu.jpg'),
                            radius: 100,
                          ),

                          Container(height: 10,),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Name:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blue)),

                                Text('Anshu Dhankecha', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Email: ', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.blue)),
                              Text('anshudhankecha@gmail.com', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
                            ],
                          ),
                          Text('Studying At DA-IICT', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white)),
                        ],
                      ),
                    ),

                    Container(height: 30,),

                  ],
                ),
          ],
        ),
      ),
    );
  }
}