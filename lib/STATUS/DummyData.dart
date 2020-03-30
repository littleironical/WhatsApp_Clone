import 'package:flutter/material.dart';

class DummyData extends StatelessWidget {
DummyData({this.name, this.time, this.netimage});
  
final name;
final time;
final netimage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 26.0,
      backgroundImage: NetworkImage(netimage),
    ),

    title: Text(name,
      style: TextStyle(
        fontSize: 17.0,
      ),
    ),

    subtitle: Text(time,
      style: TextStyle(
        fontSize: 15.0,
      ),
    ),

    onTap: () {},
  );  
 }
}
