import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[];
    var routeData = [
      {"text": "text", "route": "TextPage"},
      {"text": "Button", "route": "ButtonPage"},
      {"text": "Container", "route": "ContainerPage"},
      {"text": "Image", "route": "ImagePage"},
      {"text": "纵向列表", "route": "ListViewPage1"},
      {"text": "横向列表", "route": "ListViewPage2"},
      {"text": "动态列表", "route": "ListViewPage3"},
      {"text": "输入框", "route": "TextFieldPage"},
      {"text": "弹窗?", "route": ""},
      {"text": "组件传值?", "route": ""},
      {"text": "http", "route": "HttpPage"},
    ];
    for (var item in routeData) {
      list.add(
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(10), // 内边距
          decoration: new BoxDecoration(
            color: item['route'].isNotEmpty ? Colors.green[100] : Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          // 因为Container本身没有点击事件，这里使用GestureDetector捕获点击事件
          child: GestureDetector(
            child: Center(
              child: Text(item["text"]),
            ),
            onTap: () {
              if (item['route'].isNotEmpty) {
                Navigator.pushNamed(context, item["route"]);
              }
            },
          ),
        ),
      );
    }

    return Scaffold(
        // 网格布局
        body: GridView.count(
            crossAxisCount: 3, // 列数
            padding: const EdgeInsets.all(10), // 内边距
            mainAxisSpacing: 10.0, // 水平单个子Widget之间间距
            crossAxisSpacing: 10.0, // 垂直单个子Widget之间间距
            childAspectRatio: 1, // 宽/长
            children: list));
  }
}
