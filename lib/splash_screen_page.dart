import 'package:flutter/material.dart';
import 'package:more_demo/bottom_navigation.dart';

// 启动显示动画
class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 10000)
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0
    ).animate(_controller);

    _animation.addStatusListener((state){
      if (state == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => BottomNavigationBarWidget()),
          (router) => router == null 
        );
      }
    });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network("https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a9e671b9a551f3dedcb2bf64a4eff0ec/4610b912c8fcc3cef70d70409845d688d53f20f7.jpg",
      scale: 2.0,
      fit: BoxFit.cover,
      )
    );
  }
}