import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Page"),
      ),
      // FloatingActionButton 在 Scaffold 里使用的时候，它是一个浮动状态的按钮，
      // 在其他地方使用，就不会浮动
      floatingActionButton :FloatingActionButton(
        child: new Icon(Icons.add_a_photo),
        elevation: 3.0,  // 未点击时阴影值
        highlightElevation: 2.0,  //点击下阴影值
        backgroundColor: Colors.red,  
        onPressed: () {},
      ),  
      body: Column(
        children: <Widget>[
          new MaterialButton(
            child: new Text('MaterialButton'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {},
          ),
          // 凸起的按钮
          RaisedButton(
            child: Text("RaiseButton" ),
            onPressed: () {},  // onPressed 点击时候触发，如果不传默认是不可用状态。
            textTheme :ButtonTextTheme.normal
          ),
          // 扁平化按钮
          FlatButton(
            child: Text("FlatButton" ),
            color: Colors.blue,
            onPressed: () {},
          ),
          // 带边框按钮
          OutlineButton(
            child: Text("OutlineButton" ),
            textColor: Colors.blue,
            onPressed: () {},
          ),
          // 带图标按钮
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          // FloatingActionButton(
          //   onPressed: () {},
          //   child: new Icon(Icons.add_a_photo),
          //   elevation: 3.0,  // 未点击时阴影值
          //   highlightElevation: 2.0,  //点击下阴影值
          //   backgroundColor: Colors.red,        // 红色
          // ),  
        ]
      )
    );
  }
}