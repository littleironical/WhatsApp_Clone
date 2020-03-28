import 'package:flutter/material.dart';
import 'package:projectxi/DummyData.dart';

Widget spaceBetween(){
  return Divider(height: 5.0, indent: 80.0, endIndent: 17.0);
}

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
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
                 name: 'Hardik Kumar',
                 message: 'Flutter is so cool',
                 time: '5:25',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Jeff Bezoz',
                 message: 'I\'m the CEO of Google',
                 time: '13:09',
               ),
               spaceBetween(),
               DummyData(
                 name: 'John Cena',
                 message: 'You can\'t see me',
                 time: '13:34',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Narendra Modi',
                 message: 'Don\'t go outside',
                 time: '10:59',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Akshay Kumar',
                 message: 'Hey buddy...how are you',
                 time: '14:16',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Ravina Tandan',
                 message: 'Wash your hands properly',
                 time: '9:30',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Roman Reigns',
                 message: 'I will win tonight\'s fight',
                 time: '8:00',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Bhuvan Bam',
                 message: 'I\'m going to United States tommorrow',
                 time: '11:47',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Varun Dhavan',
                 message: 'Happy Quarantine buddy',
                 time: '5:20',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Ashish Chanchlani',
                 message: 'I\'m going tto release my new video today',
                 time: '6:31',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Carry Minati',
                 message: 'Take my pc bro. I have a new one',
                 time: '10:10',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Tanmay Bhatt',
                 message: 'Where are you? I\'m waiting outside',
                 time: '10:36',
               ),
               spaceBetween(),
               DummyData(
                 name: 'Debbo Ratnani',
                 message: 'Can I take your pics?',
                 time: '20:13',
               ),
             ],
          ),

          floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.message)
         )
        ),
      );
  }
}
