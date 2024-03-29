import 'package:flutter/material.dart';
import '../model/calls.dart';
class call extends StatefulWidget {
  @override
  _callState createState() => _callState();
}

class _callState extends State<call> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context,i)=>Column(
        children: <Widget>[
          Divider(
            height: 20.0,
          ),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25,
              backgroundImage: NetworkImage(callData[i].imageUrl),
            ),
            title: Text(callData[i].name,
            style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                callData[i].time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0
                ),
              ),
            ),
            trailing: Icon(Icons.call),
            selected: true,
          )
        ],

      ),
      
    );
  }
}