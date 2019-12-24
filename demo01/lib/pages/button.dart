import 'package:flutter/material.dart';

// RaisedButton: 凸起的按钮
// FlatButton：扁平化按钮
// OutlineButton：带边框按钮
// IconButton：带图标按钮
// Scaffold通常被用作MaterialApp的子Widget，它会填充可用空间，占据整个窗口或设备屏幕。Scaffold提供了大多数应用程序都应该具备的功能，例如顶部的appBar，底部的bottomNavigationBar，隐藏的侧边栏drawer等。

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Button Page"),
      ),
      body: Column(
        children: <Widget>[
             RaisedButton(
                  child: Text("我是 RaiseButton" ),
                  onPressed: () {},
              ),
               FlatButton(
                  child: Text("我是 FlatButton" ),
                  color: Colors.blue,
                  onPressed: () {},
              ),
              OutlineButton(
                  child: Text("我是 OutlineButton" ),
                  textColor: Colors.blue,
                  onPressed: () {},
              ),
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
              )  
        ]
      )
    );
  }
}