import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart';

// Scaffold通常被用作MaterialApp的子Widget，
// 它会填充可用空间，占据整个窗口或设备屏幕。
// Scaffold提供了大多数应用程序都应该具备的功能，例如顶部的appBar，底部的bottomNavigationBar，隐藏的侧边栏drawer等。
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image demo"),
      ),
      // cjh todo 如何展示多张图片
      body:Image(
        image: NetworkImage("https://mat1.gtimg.com/pingjs/ext2020/qqindex2018/dist/img/qq_logo_2x.png"),
        // image: Image.asset("images/header.jpg",width:200.0)
      )
    );
  }
}