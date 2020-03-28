import 'package:flutter/material.dart';

import 'ChatsScreen.dart';

void main(){
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xFF075E54),
      ),
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
            Padding(padding: EdgeInsets.only(right: 10.0),),
            Icon(Icons.more_vert),
            Padding(padding: EdgeInsets.only(right: 10.0),),
          ],

          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(child: Text('CHATS', style: TextStyle(fontSize: 15.0),),),
              Tab(child: Text('STATUS', style: TextStyle(fontSize: 15.0),),),
              Tab(child: Text('CALLS', style: TextStyle(fontSize: 15.0),),),
            ],
          ),
        ),
        
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(child: Text('CAMERA'),),
            ChatsScreen(),
            Center(child: Text('STATUS'),),
            Center(child: Text('CALLS'),),
          ],
        ),
      )
    );
  }
}
