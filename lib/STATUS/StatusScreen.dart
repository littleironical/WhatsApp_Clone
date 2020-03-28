import 'package:flutter/material.dart';

import 'DummyData.dart';

Widget spaceBetween(){
  return Divider(height: 5.0, indent: 80.0, endIndent: 17.0);
}

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
               ListTile(
                 leading: CircleAvatar(
                     radius: 26.0,
                     child: Text('ME',
                       style: TextStyle(
                       fontSize: 25.0,
                       color: Colors.white,
                      ),
                    ),
                    backgroundColor: Color(0xFF075E54),
                  ),

                  title: Text('My Status',
                     style: TextStyle(
                       fontSize: 17.0,
                     ),
                  ),

                  subtitle: Text('Tap to add status update',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
               ),

               SizedBox(
                 height: 30.0,
                 child: Container(
                   alignment: Alignment.centerLeft,
                   color: Colors.grey[200],
                   child: Text(
                     '    Recent updates',
                      style: TextStyle(
                        color: Colors.black87,
                     )
                    ),
                  ),
                ),

               DummyData(
                 name: 'Roman Reigns',
                 time: '24 minutes ago',
               ),
               spaceBetween(),

               DummyData(
                 name: 'Bhuvan Bam',
                 time: '57 minutes ago',
               ),
               spaceBetween(),

               DummyData(
                 name: 'John Cena',
                 time: '59 minutes ago',
               ),
               spaceBetween(),

               SizedBox(
                 height: 30.0,
                 child: Container(
                   alignment: Alignment.centerLeft,
                   color: Colors.grey[200],
                   child: Text(
                     '    Viewed updates',
                      style: TextStyle(
                        color: Colors.black87,
                     )
                    ),
                  ),
                ),
               
               DummyData(
                 name: 'Hardik Kumar',
                 time: 'Yesterday, 23:44',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Varun Dhavan',
                 time: 'Yesterday, 22:43',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Akshay Kumar',
                 time: 'Yesterday, 21:10',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Ravina Tandan',
                 time: 'Yesterday, 20:16',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Debbo Ratnani',
                 time: 'Yesterday, 19:37',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Sundar Pichai',
                 time: 'Yesterday, 19:30',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Narendra Modi',
                 time: 'Yesterday, 13:05',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Carry Minati',
                 time: 'Yesterday, 11:14',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Tanmay Bhatt',
                 time: 'Yesterday, 10:06',
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Ashish Chanchlani',
                 time: 'Yesterday, 09:03',
               ),
             ],
          ),

          floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.camera_alt)
         )
        ),
      );
  }
}
