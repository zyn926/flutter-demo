import 'package:flutter/material.dart';

class ToolTipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示框"),
      ),
      body: Tooltip(
        height: 100,
        message: "啦啦啦啦",
        child: Image.network("https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a9e671b9a551f3dedcb2bf64a4eff0ec/4610b912c8fcc3cef70d70409845d688d53f20f7.jpg"),
      ),
    );
  }
}