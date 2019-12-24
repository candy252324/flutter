import 'package:flutter/material.dart';
// import 'navigator/navigator.dart';

import 'pages/button.dart';
import 'pages/listDetail.dart';
import 'pages/text.dart';
import 'pages/container.dart';
import 'pages/image.dart';
import 'pages/listView1.dart';
import 'pages/listView2.dart';
import 'pages/listView3.dart';
import 'pages/grideView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp在 Flutter开发中通常被作为入口Widget（顶部不带返回箭头）。
    // 你可以将它类比成为网页中的<html></html>，且它自带路由、主题色，<title>等功能。
    return MaterialApp(
      title: 'Flutter Demo',
      //路由表定义
      routes:{
        "TextPage":(context)=> TextDemo(),
        "ButtonPage":(context)=> ButtonDemo(),
        "ButtonPage":(context)=> ButtonDemo(),
        "ContainerPage":(context)=> ContainerDemo(),
        "ImagePage":(context)=> ImageDemo(),
        "listViewPage1":(context)=> ListViewDemo1(), 
        "listViewPage2":(context)=> ListViewDemo2(), 
        "listViewPage3":(context)=> ListViewDemo3(),
        "DetailPage":(context)=> ListDetailDemo(), //增加详情页的路由配置
        "grideViewPage":(context)=> GrideViewDemo(), //增加详情页的路由配置
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child:Column(
          children:<Widget>[
            RaisedButton(
              child: Text("Click to Text" ),
              onPressed: () {
                //根据命名路由做跳转
                Navigator.pushNamed(context, "TextPage");
              },
            ),
            RaisedButton(
              child: Text("Click to Button" ),
              onPressed: () {
                Navigator.pushNamed(context, "ButtonPage");
              },
            ),
            RaisedButton(
              child: Text("Click to Container" ),
              onPressed: () {
                Navigator.pushNamed(context, "ContainerPage");
              },
            ),
             RaisedButton(
              child: Text("Click to Image" ),
              onPressed: () {
                Navigator.pushNamed(context, "ImagePage");
              },
            ),         
            RaisedButton(
              child: Text("纵向列表" ),
              onPressed: () {
                Navigator.pushNamed(context, "listViewPage1");
              },
            ),
             RaisedButton(
              child: Text("横向列表" ),
              onPressed: () {
                Navigator.pushNamed(context, "listViewPage2");
              },
            ),
            RaisedButton(
              child: Text("动态列表" ),
              onPressed: () {
                Navigator.pushNamed(context, "listViewPage3");
              },
            ),
             RaisedButton(
              child: Text("网格布局" ),
              onPressed: () {
                Navigator.pushNamed(context, "grideViewPage");
              },
            ),
          ]
        )
    )
    );
  }  
}