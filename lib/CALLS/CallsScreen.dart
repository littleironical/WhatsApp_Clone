import 'package:flutter/material.dart';

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
                 message: 'Wash your hands properly',
                 time: 'Yesterday',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Tanmay Bhatt',
                 message: 'Where are you? I\'m waiting outside',
                 time: '3/7/20',
               ),
               spaceBetween(),

               DummyData(
                 name: 'Debbo Ratnani',
                 message: 'Can I take your pics?',
                 time: '3/5/20',
               ),  

               DummyData(
                 name: 'Akshay Kumar',
                 message: 'Hey buddy...how are you',
                 time: '09:16',
               ),
               spaceBetween(),

               DummyData(
                 name: 'Varun Dhavan',
                 message: 'Happy Quarantine buddy',
                 time: '3/24/20',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Ashish Chanchlani',
                 message: 'I\'m going tto release my new video today',
                 time: '3/20/20',
               ),
               spaceBetween(),

               DummyData(
                 name: 'Bhuvan Bam',
                 message: 'I\'m going to United States tommorrow',
                 time: '3/26/20',
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
