import 'package:flutter/material.dart';
import 'camera.dart';
import 'call.dart';
import 'status.dart';
import 'chat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController=TabController(initialIndex: 1,length: 4,vsync: this);  //initialIndex is the index where the tabcontroller loads in the beginnig ,length is the number of tabs
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt,color: Colors.white,),
            ),
            Tab(
              child: Text("CHATS",style: Theme.of(context).textTheme.button),
            ),
            Tab(
              child: Text("STATUS",style: Theme.of(context).textTheme.button),
            ),
            Tab(
              child: Text("CALLS",style: Theme.of(context).textTheme.button),
            ),
            
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          camera(),
          chat(),
          status(),
          call(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: (){},
      ),
      
      
      
    );
  }
}