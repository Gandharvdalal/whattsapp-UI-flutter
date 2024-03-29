import 'package:flutter/material.dart';
import '../reusable/wcards.dart';
import '../model/chat.dart';

class status extends StatefulWidget {
  @override
  _statusState createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Wcards("My Status","https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500","Tap to add"),
        Divider(),
        Heading("Recent updates"),
        Wcards(messageData[2].name,messageData[2].imageUrl,messageData[2].time),
        Wcards(messageData[3].name,messageData[3].imageUrl,messageData[3].time),
        Wcards(messageData[4].name,messageData[4].imageUrl,messageData[4].time),
        Divider(),
        Heading("Today"),
        Wcards(messageData[2].name,messageData[2].imageUrl,messageData[2].time),
        Wcards(messageData[3].name,messageData[3].imageUrl,messageData[3].time),
        Wcards(messageData[4].name,messageData[4].imageUrl,messageData[4].time),

      ],
      
    );
  }
}
class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0,top: 5.0),
        child: Text(heading,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),),
      ),
      
      
    );
  }
}