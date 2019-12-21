import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("横向列表"),
      ),
      body:Center(
        child: Container(
          height: 180,
          alignment: Alignment.center,
          color: Colors.red,
          child: MyList()
        ),
      )
    );
  }
}


// 组件
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,  // 横向展示
      children: <Widget>[
        new Container(
          width: 180,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180,
          color: Colors.deepPurple,
        )
      ],
    );
  }
}