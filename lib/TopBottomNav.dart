import 'package:flutter/material.dart';

class TopBottomNav extends StatefulWidget {
  @override
  _TopBottomNavState createState() => _TopBottomNavState();
}

class _TopBottomNavState extends State<TopBottomNav> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState(){
    // TODO: impelement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Apps'),
        backgroundColor: Colors.blue,
        bottom: new TabBar(
            controller: tabController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home),),
              new Tab(icon: new Icon(Icons.dashboard),),
              new Tab(icon: new Icon(Icons.data_usage),),
              new Tab(icon: new Icon(Icons.close),),
            ]),
      ),

      body: new TabBarView(
          controller: tabController,
          children: <Widget>[
            new Center(child: new Text('Welcome to Home'),),
            new Center(child: new Text('Welcome to Dashboard'),),
            new Center(child: new Text('Welcome to Data Usage'),),
            new Center(child: new Text('Welcome to Close'),),
          ]),
    );
  }
}