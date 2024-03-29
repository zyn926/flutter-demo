import 'package:flutter/material.dart';

// 自定义动画
class CustomRoute extends PageRouteBuilder{
  final Widget widget;

  CustomRoute(this.widget):super(
    transitionDuration: Duration(milliseconds: 500),
    pageBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
    ){
      return widget;
    },
    transitionsBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget widget
    ){
      return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(1.0,0.0),
          end: Offset(0.0,0.0)
        ).animate(CurvedAnimation(
          parent: animation1,
          curve: Curves.fastOutSlowIn
        )),
        child: widget,
      );
    }
  );
}