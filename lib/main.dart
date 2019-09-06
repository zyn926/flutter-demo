import 'package:flutter/material.dart';
// import 'package:more_demo/each_view_page.dart';
// import 'package:more_demo/state/state_page_2.dart';
// import './state/state_page_1.dart';
// import 'bottom_navigation.dart';
// import 'bottom_navigation_shap.dart';
// import 'keep_state_page.dart';
// import 'search_page.dart';
// import 'wrap_page.dart';
// import 'expansion_page.dart';
// import 'clicp_path_page.dart';
// import 'splash_screen_page.dart';
// import 'right_back_page.dart';
import 'tool_tip_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      debugShowCheckedModeBanner: false,
      home: ToolTipPage()
    );
  }
}
