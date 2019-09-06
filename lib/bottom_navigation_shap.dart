import 'package:flutter/material.dart';
import 'each_view_page.dart';
import 'custom_route.dart';

// 底部自定义样式
class BottomNavigationShap extends StatefulWidget {
  @override
  _BottomNavigationShapState createState() => _BottomNavigationShapState();
}

class _BottomNavigationShapState extends State<BottomNavigationShap> {

  List<Widget> _viewList = List();

  int _index = 0;

  @override
  void initState() {
    _viewList..add(EachViewPage("主页"))..add(EachViewPage("第二页"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _viewList[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // setState(() {
          //  _index = 1;
          // });
          // Navigator.push(context, MaterialPageRoute(
          //   builder: (BuildContext context){
          //     return EachViewPage("新增页");
          //   }
          // ));

          Navigator.of(context).push(CustomRoute(EachViewPage("新增页")));
        },
        tooltip: "长按显示",
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                 _index = 0; 
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              color: Colors.white,
              onPressed: (){
                setState(() {
                 _index = 1; 
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
