import 'package:flutter/material.dart';

class ListViewDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("纵向列表"),
      ),
      body:new ListView(
        children: <Widget>[
          // 列表瓦片
          new ListTile(
            leading:new Icon(Icons.arrow_left),
            title:new Text('111111111111')
          ),
          new ListTile(
            leading:new Icon(Icons.arrow_left),
            title:new Text('22222222222')
          ),
          new ListTile(
            leading:new Icon(Icons.arrow_left),
            title:new Text('3333333333')
          ),
          new Image.network("https://img3.doubanio.com/view/photo/l/public/p2232000593.webp"),
          new Image.network("https://img3.doubanio.com/view/photo/m/public/p2232000573.webp"),
          new Image.network("https://img3.doubanio.com/view/photo/m/public/p2232000030.webp")
        ],
      )
    );
  }
}