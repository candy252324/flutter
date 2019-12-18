import 'package:flutter/material.dart';
import 'list.dart';
import 'button.dart';
import 'detailPage.dart';
import 'text.dart';
import 'container.dart';
import 'image.dart';

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
        "ListPage":(context)=> ListPage(),
        "DetailPage":(context)=> DetailPage(), //增加详情页的路由配置
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
        title: Text("我是Title"),
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
                //根据命名路由做跳转
                Navigator.pushNamed(context, "ButtonPage");
              },
            ),
            RaisedButton(
              child: Text("Click to Container" ),
              onPressed: () {
                //根据命名路由做跳转
                Navigator.pushNamed(context, "ContainerPage");
              },
            ),
             RaisedButton(
              child: Text("Click to Image" ),
              onPressed: () {
                //根据命名路由做跳转
                Navigator.pushNamed(context, "ImagePage");
              },
            ),
            RaisedButton(
              child: Text("Clikc to ListPage" ),
              onPressed: () {
                //根据命名路由做跳转
                Navigator.pushNamed(context, "ListPage");
              },
            ),
          ]
        )
    )
    );
  }  
}