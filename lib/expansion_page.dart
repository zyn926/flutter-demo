import 'package:flutter/material.dart';

// 折叠
class ExpansionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("折叠"),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text("折叠"),
          leading: Icon(Icons.ac_unit),
          children: <Widget>[
            ListTile(
              title: Text("内部内容"),
              subtitle: Text("内容"),
            )
          ],
        ),
      ),
    );
  }
}