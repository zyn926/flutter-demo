import 'package:flutter/material.dart';

// 状态保持
class KeepStatePage extends StatefulWidget {
  @override
  _KeepStatePageState createState() => _KeepStatePageState();
}

class _KeepStatePageState extends State<KeepStatePage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3,vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("状态保持"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(icon:Icon(Icons.directions_car)),
            Tab(icon:Icon(Icons.directions_transit)),
            Tab(icon:Icon(Icons.directions_bike)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          BodayPage(),
          BodayPage(),
          BodayPage(),
        ],
      ),
    );
  }
}

class BodayPage extends StatefulWidget {
  @override
  _BodayPageState createState() => _BodayPageState();
}

class _BodayPageState extends State<BodayPage> with AutomaticKeepAliveClientMixin {

  int _count = 0;

  @override
  bool get wantKeepAlive => true;

  void _addCount(){
    setState(() => _count++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("点加一"),
            Text(
              "$_count",
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCount,
        tooltip: "Add",
        child: Icon(Icons.add),
      ),
    );
  }
}