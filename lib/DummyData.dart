import 'package:flutter/material.dart';

int i=0, x;

class DummyData extends StatelessWidget {
DummyData({this.name, this.message, this.time});
  
final name;
final message;
final time;

String letters(){
  for(i=0; name[i]!='\0'; i++){
    if(name[i]==' '){
      x=i+1;
      break;
    }
  }
  return(name[0] + name[x]);
}

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: CircleAvatar(
      radius: 26.0,
      child: Text(letters(),
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.grey,
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

    trailing: Text(time,
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.grey,
      ),
    ),

    onTap: () {},
  );  
 }
}