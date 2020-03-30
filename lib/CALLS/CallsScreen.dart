import 'package:flutter/material.dart';
import 'package:projectxi/main.dart';

import 'DummyData.dart';

Widget spaceBetween(){
  return Divider(height: 5.0, indent: 80.0, endIndent: 17.0);
}

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xFF075E54),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:  ListView(
            padding: EdgeInsets.only(bottom: 80.0, top: 0.0),
            addRepaintBoundaries: true,
             children: <Widget>[
              DummyData(
                 name: 'Ravina Tandan',
                 time: 'Yesterday, 18:49',
                 netimage: ravinatandon,
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Tanmay Bhatt',
                 time: 'March 24, 18:26',
                 netimage: tanmaybhatt,
               ),
               spaceBetween(),

               DummyData(
                 name: 'Dabboo Ratnani',
                 time: 'March 13, 13:26',
                 netimage: dabbooratnani,
               ),  

               DummyData(
                 name: 'Akshay Kumar',
                 time: 'March 9, 21:16',
                 netimage: akshaykumar,
               ),
               spaceBetween(),

               DummyData(
                 name: 'Varun Dhavan',
                 time: 'March 5, 14:06',
                 netimage: varundhavan,
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Ashish Chanchlani',
                 time: 'February 24, 11:51',
                 netimage: ashishchanchlani,
               ),
               spaceBetween(),

               DummyData(
                 name: 'Bhuvan Bam',
                 time: 'February 22, 21:02',
                 netimage: bhuvanbam,
               ),
             ],
          ),

          floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.add_call),
         )
        ),
      );
  }
}
