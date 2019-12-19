import 'package:flutter/material.dart';

// Scaffold通常被用作MaterialApp的子Widget，
// 它会填充可用空间，占据整个窗口或设备屏幕。
// Scaffold提供了大多数应用程序都应该具备的功能，例如顶部的appBar，底部的bottomNavigationBar，隐藏的侧边栏drawer等。

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextWidget"),
      ),
      body:Center(
         child: Text(
             // 文本内容写在最前面 
            'flutter一切皆组件flutter一切皆组件flutter一切皆组件flutter一切皆组件flutter一切皆组件flutter一切皆组件flutter一切皆组件flutter一切皆组件flutter一切皆组件flutter一切皆组件',  
            textAlign:TextAlign.right, // 文本对齐
            maxLines: 1,// 文本显示的最大行数
            overflow: TextOverflow.ellipsis,  // 文本溢出效果,clip:裁剪，ellipsis：省略号，fade:渐变
            style:TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,
              // color:Color.fromARGB(255, 0, 255, 0), //等价于 color:Color(0xff0000ff), 0xff = 15*16^1 + 15*16^0 = 255
              color:Colors.red[500],  // 100 的整数倍 cjh todo
              decoration:TextDecoration.underline, // 下划线
              decorationStyle: TextDecorationStyle.solid,  
            )
          )
      )
    );
  }
}

// 使用以下代码的话显示效果一致
// 但是不建议这样做，因为MaterialApp通常作为入口Widget，且顶部也不会有返回箭头

// class TextDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'text demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("text demo"),
//         ),
//         body: Center(
//           child: Text(
//             'text1',
//             style:TextStyle(
//               fontSize:40,
//               fontWeight: FontWeight.bold,
//               color:Color(0xFF0000ff)
//             )
//           )
//         )
//       ),
//     );
//   }
// }