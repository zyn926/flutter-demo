import "package:flutter/material.dart";
import 'pages/home_page.dart';
import 'pages/email_page.dart';
import 'pages/pages_page.dart';
import 'pages/airplay_page.dart';

// 底部导航
class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState(){
    list..add(HomePage())..add(EmailPage())..add(PagesPage())..add(AirplayPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text("主页",style:TextStyle(color:_BottomNavigationColor)),
            icon: Icon(
              Icons.home,
              color: _BottomNavigationColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("email",style:TextStyle(color:_BottomNavigationColor)),
            icon: Icon(
              Icons.email,
              color: _BottomNavigationColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("pages",style:TextStyle(color:_BottomNavigationColor)),
            icon: Icon(
              Icons.pages ,
              color: _BottomNavigationColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("airplay",style:TextStyle(color:_BottomNavigationColor)),
            icon: Icon(
              Icons.airplay,
              color: _BottomNavigationColor,
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
           _currentIndex = index; 
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}