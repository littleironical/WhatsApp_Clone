import 'package:flutter/material.dart';

void main(){
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          title: Text('WhatsApp',
          style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          actions: <Widget>[
            Icon(Icons.search),
            SizedBox(width: 10.0),
            Icon(Icons.more_vert),
            SizedBox(width: 10.0),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.message),
        ),
        body: Container(),
      ),
    );
  }
}