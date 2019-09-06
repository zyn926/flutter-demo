import 'package:flutter/material.dart';

// 流式布局
class WrapPage extends StatefulWidget {
  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {

  List<Widget> list;

  @override
  void initState() {
    list = List<Widget>()..add(buildButton());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局"),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 20.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton() {
    return GestureDetector(
      onTap: (){
        if (list.length < 9) {
          setState(() {
           list.insert(list.length - 1, buildPhoto()); 
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.white,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto(){
    return GestureDetector(
      onTap: (){
        if (list.length > 1) {
          setState(() {
           list.removeAt(0); 
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.amber,
          child: Center(
            child: Text("照片"),
          ),
        ),
      ),
    ); 
  }
}
