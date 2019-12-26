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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //路由表定义
      routes:{
        "TextPage":(context)=> TextDemo(),
        "ButtonPage":(context)=> ButtonDemo(),
        "ButtonPage":(context)=> ButtonDemo(),
        "ContainerPage":(context)=> ContainerDemo(),
        "ImagePage":(context)=> ImageDemo(),
        "ListViewPage1":(context)=> ListViewDemo1(), 
        "ListViewPage2":(context)=> ListViewDemo2(), 
        "ListViewPage3":(context)=> ListViewDemo3(),
        "DetailPage":(context)=> ListDetailDemo(), //增加详情页的路由配置
      },
      home: TabNavigator(),
    );
  }
}