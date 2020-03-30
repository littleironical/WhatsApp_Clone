import 'package:flutter/material.dart';

class DummyData extends StatelessWidget {
DummyData({this.name, this.message, this.time, this.netimage});
  
final name;
final message;
final time;
final netimage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.grey,
      backgroundImage: NetworkImage(netimage),
      radius: 26.0,
    ),

    title: Text(name,
      style: TextStyle(
        fontSize: 17.0,
      ),
    ),

    subtitle: Text(message,
      style: TextStyle(
        fontSize: 15.0,
      ),
    ),

    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(time,
        style: TextStyle(
          fontSize: 13.0,
          color: Colors.black54,
          ),
        ),
        Opacity(
          opacity: 0.0,
          child: Icon(Icons.volume_off),
        ),
      ],
    ),

    onTap: () {},
  );  
 }
}
