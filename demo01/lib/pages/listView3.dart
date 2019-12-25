import 'package:flutter/material.dart';

class ListViewDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //定义列表widget的list
    List<Widget> list=<Widget>[];

    var data=[
      {"id":1,"title":"测试数据aaa","subtitle":"subtitle111"},
      {"id":2,"title":"测试数据bbb","subtitle":"subtitle222"},
      {"id":3,"title":"测试数据ccc","subtitle":"subtitle333"},
      {"id":4,"title":"测试数据eee","subtitle":"subtitle444"},
    ];
    for (var item in data) {
      list.add( ListTile( 
          title: Text(item["title"],style: TextStyle(fontSize: 18.0) ),
          subtitle: Text(item["subtitle"]),
          leading:  Icon( Icons.nature, color:Colors.orange ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap:(){
            //点击的时候，进行路由跳转传参
             Navigator.pushNamed(context, "DetailPage", arguments:item);
          },
      ));
    }

    //返回整个页面
    return Scaffold(
      appBar: AppBar(
        title: Text("动态列表"),
      ),
      body: Center(
        child: ListView(
          children: list,
          // children: <Widget>[
          //   ListTile(title: Text("title1"),subtitle:Text("subtitle1")),
          //   ListTile(title: Text("title2"),subtitle:Text("subtitle2")),
          // ],
        )
      ),
    );
  }
}