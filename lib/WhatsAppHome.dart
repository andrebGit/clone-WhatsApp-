import 'package:clone/pages/CallsScreen.dart';
import 'package:clone/pages/CameraScreen.dart';
import 'package:clone/pages/ChatScreen.dart';
import 'package:clone/pages/StatusScreen.dart';
import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      initialIndex: 1,
      length: 4,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt_outlined)),
            Tab(text: 'CONVERSAS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CHAMADAS')
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
