import 'package:flutter/material.dart';

// Scaffold通常被用作MaterialApp的子Widget，
// 它会填充可用空间，占据整个窗口或设备屏幕。
// Scaffold提供了大多数应用程序都应该具备的功能，例如顶部的appBar，底部的bottomNavigationBar，隐藏的侧边栏drawer等。
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageWidget"),
      ),
      body:Column(
        children: <Widget>[
          // 加载网络图片示例
          Container(
            width:400,
            height: 200,
            color:Colors.lightBlue,
            child: new Image.network(
              "https://mat1.gtimg.com/pingjs/ext2020/qqindex2018/dist/img/qq_logo_2x.png",
              scale:2.0,  // 缩小2倍
              repeat: ImageRepeat.repeat,  //  repeatX 横向重复
              // fit:BoxFit.contain,   // 图片填充方式  container, cover, fitWidth, fitHeight
              // color:Colors.green,  // 颜色
              // colorBlendMode: BlendMode.modulate,  // 颜色混合模式
            ),
            // 等价于：
            // child:Image(
            //   image: NetworkImage(
            //     "https://mat1.gtimg.com/pingjs/ext2020/qqindex2018/dist/img/qq_logo_2x.png",
            //     scale: 2.0
            //   ),
            // )
          ),
          // 加载本地图片示例
          Container(
            width:400,
            height: 200,
            // 加载本地图片资源, 需要在pubspec.yaml 中配置资源路径
            child: new Image.asset(
              "images/panda.jpg",
            ),
          )
        ],

      )
    );
  }
}