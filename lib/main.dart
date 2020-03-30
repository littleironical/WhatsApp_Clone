import 'package:flutter/material.dart';

import 'CHATS/ChatsScreen.dart';
import 'STATUS/StatusScreen.dart';
import 'CALLS/CallsScreen.dart';

// ADDED ONLINE IMAGES 
String myimg = 'https://cdn.dribbble.com/users/3526049/screenshots/6937174/avatar-2_2x.jpg';
String hardikkumar = 'https://www.pandasecurity.com/mediacenter/src/uploads/2016/03/pandasecurity-Who-are-the-most-famous-hackers-in-history.jpg';
String sundarpichai = 'https://images.hindi.news18.com/ibnkhabar/uploads/2020/03/Google-and-Alphabet-CEO-Sundar-Pichai-Image-Reuters-770x435.jpg';
String johncena = 'https://www.wwe.com/f/styles/og_image/public/all/2019/10/RAW_06202016rf_1606--3d3997f53e6f3e9277cd5a67fbd8f31f.jpg';
String narendramodi = 'https://pbs.twimg.com/profile_images/1134082549041393672/QbihPzrL_400x400.png';
String akshaykumar = 'https://gumlet.assettype.com/thequint/2020-03/b4c50c64-968a-474f-9dde-8499aea58f0d/akshay.jpg';
String ravinatandon = 'https://wikibio.in/wp-content/uploads/2019/05/Raveena-Tandon.jpg';
String romanreigns = 'https://statics.sportskeeda.com/editor/2020/03/c25d2-15852999727857-500.jpg';
String bhuvanbam = 'https://www.thestatesman.com/wp-content/uploads/2019/09/bhuvan-bam.jpg';
String varundhavan = 'https://www.thenews.com.pk//assets/uploads/updates/2020-03-29/636421_4851099_262720_4755681_updates_updates.jpg';
String ashishchanchlani = 'https://m.media-amazon.com/images/M/MV5BMzgwN2VmMjctOTk5Zi00OGRhLWFiYjItYzYxZGJkMGE3OGFkXkEyXkFqcGdeQXVyODAzNzAwOTU@._V1_.jpg';
String carryminati = 'https://imgk.timesnownews.com/51869193_384515269041529_3421677834851081593_n_1558094378__rend_1_1.jpg?tr=w-600';
String tanmaybhatt = 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2018/06/Tanmay-Bhat-Contact-Information.jpg';
String dabbooratnani = 'https://pbs.twimg.com/profile_images/1165610404174692354/3gugXywQ_400x400.jpg';

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
            Padding(padding: EdgeInsets.only(right: 15.0),),
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
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      )
    );
  }
}
