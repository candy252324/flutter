import 'package:flutter/material.dart';

class GrideViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("GridView")
      ),
      body:GridView.count(
        padding:const EdgeInsets.all(10),  // 内边距
        crossAxisSpacing:10.0,   // 外边距
        crossAxisCount: 3,   // 列数
        children: <Widget>[
          Text('flutter'),
          Text('flutter'),
          Text('flutter'),
          Text('flutter'),
          Text('flutter'),
          Text('flutter'),
          Text('flutter'),
          Text('flutter'),
          Text('flutter'),
          Text('flutter'),
        ],
      )
    );
  }
}