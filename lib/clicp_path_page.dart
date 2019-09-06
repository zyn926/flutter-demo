import 'package:flutter/material.dart';

// 贝塞尔曲线
class ClicpPathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("弧线"),
      // ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper1(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}

// 画曲线类
class BottomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    // 左上角点
    path.lineTo(0, 0);
    // 左下角点
    path.lineTo(0, size.height - 60);
    // 贝塞尔曲线控制点 控制点（突起的点）x 控制点y 结束点x 结束点y
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 60);
    // 右下角点
    path.lineTo(size.width, size.height - 60);
    //右上角点
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }

}

// 波浪形
class BottomClipper1 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(size.width / 4, size.height + 20, size.width / 2, size.height - 30);
    path.lineTo(size.width / 2, size.height - 30);
    path.quadraticBezierTo(size.width / 4 * 3, size.height - 80, size.width, size.height - 10);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }

}