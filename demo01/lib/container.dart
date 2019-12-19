import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerWidget"),
      ),
      body:Container(
        // color: Colors.blue, // 【注】设置了deoration 则不能设置color,会报错
        width: 200,
        height: 400,
        padding:EdgeInsets.all(30), 
        margin: EdgeInsets.fromLTRB(50,0,0,20),
        alignment: Alignment.bottomRight,  // ContainerWidget中的元素对齐方式
        decoration: new BoxDecoration(
          color:Colors.blue,
          border: new Border.all(width: 2, color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(8)),
          // cjh todo
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.red,//阴影颜色
              blurRadius: 20.0,//阴影大小
            )
          ],
        ),
        // cjh todo 绕什么转的
        transform: Matrix4.rotationZ(0.1),  // 弧度：角度×π÷180°
        child: Text("container ",style:TextStyle(fontSize: 20,color: Colors.white)),
      )
    );
  }
}
