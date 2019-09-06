import 'package:flutter/material.dart';

// 用于底部导航调用，页面公共组件
class EachViewPage extends StatefulWidget {

  String _title;
  EachViewPage(this._title);

  @override
  _EachViewPageState createState() => _EachViewPageState();
}

class _EachViewPageState extends State<EachViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title,style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}