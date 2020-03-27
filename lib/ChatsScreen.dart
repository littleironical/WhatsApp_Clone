import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {

List<int> items = List();

@override
  void initState() {
    for(int i=0; i<20; i++){
      items.add(i);
    }
    super.initState();
  }

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:  ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index){
              return mylist();
            }
          ),
          floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.message),
         ),
      )
    );
  }
}

Widget mylist(){
  return  ListTile(
    leading: CircleAvatar(
      radius: 26.0,
      child: Text('H',
        style: TextStyle(
          color: Colors.lightGreen[800],
          fontWeight: FontWeight.w900,
        ),
      ),
      backgroundColor: Colors.grey,
    ),
    title: Text('Hardik Kumar'),
    subtitle: Text('Hey Buddy! How are you?'),
    trailing: Text('22:13'),
    onTap: () {},
  );
}
