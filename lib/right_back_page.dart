import 'package:flutter/cupertino.dart';

// 右滑返回上一页
class RightBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: CupertinoColors.black,
              width: 1.0
            )
          ),
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: (){
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (BuildContext context){
                  return RightBackPage();
                })
              );
            },
          ),
        ),
      ),
    );
  }
}