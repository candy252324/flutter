import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'海报',
      home:Scaffold(
        appBar:AppBar(
          title:Text("海报")
        ),
        body:GridView(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:3,      // 列数
            mainAxisSpacing: 2.0,    //水平单个子Widget之间间距
            crossAxisSpacing: 10.0,   //垂直单个子Widget之间间距
            childAspectRatio: 0.7  // 宽/长
          ),
          children: <Widget>[
            new Image.network('https://img3.doubanio.com/view/photo/l/public/p2232000593.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/m/public/p2232000030.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/m/public/p2232000573.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/l/public/p2232000593.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/m/public/p2232000030.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/m/public/p2232000573.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/l/public/p2232000593.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/m/public/p2232000030.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/m/public/p2232000573.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/l/public/p2232000593.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/m/public/p2232000030.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/m/public/p2232000573.webp',fit:BoxFit.cover),
          ],
        )
      )
    );
  }
}