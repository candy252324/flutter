// 导入了Material UI组件库。Material是一种标准的移动端和web端的视觉设计语言， Flutter默认提供了一套丰富的Material风格的UI组件。
import 'package:flutter/material.dart';
import 'package:demo01/navigator/tab_navigator.dart';

import 'pages/button.dart';
import 'pages/listDetail.dart';
import 'pages/text.dart';
import 'pages/container.dart';
import 'pages/image.dart';
import 'pages/listView1.dart';
import 'pages/listView2.dart';
import 'pages/listView3.dart';
import 'pages/passValue.dart';
import 'pages/textField.dart';
import 'pages/http.dart';
import 'pages/caculate.dart';

// main函数中调用了runApp 方法，它的功能是启动Flutter应用
// runApp接受一个Widget参数，在本示例中它是一个MyApp对象，MyApp()是Flutter应用的根组件。
void main() => runApp(MyApp());

// MyApp类代表Flutter应用，它继承了 StatelessWidget类，这也就意味着应用本身也是一个widget。
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp 是Material库中提供的Flutter APP框架，通过它可以设置应用的名称、主题、语言、首页及路由列表等。MaterialApp也是一个widget。
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //注册路由表
      routes: {
        "CaculatePage": (context) => CaculateDemo(),
        "TextPage": (context) => TextDemo(),
        "ButtonPage": (context) => ButtonDemo(),
        "ButtonPage": (context) => ButtonDemo(),
        "ContainerPage": (context) => ContainerDemo(),
        "ImagePage": (context) => ImageDemo(),
        "ListViewPage1": (context) => ListViewDemo1(),
        "ListViewPage2": (context) => ListViewDemo2(),
        "ListViewPage3": (context) => ListViewDemo3(),
        "DetailPage": (context) => ListDetailDemo(), //列表详情页
        "PassValuePage": (context) => PassValue(),
        "TextFieldPage": (context) => TextFieldDemo(),
        "HttpPage": (context) => HttpPageDemo(),
      },
      // home 为Flutter应用的首页，它也是一个widget
      home: TabNavigator(),
    );
  }
}
