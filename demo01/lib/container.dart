import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("container demo"),
      ),
      body:Center(
        child: Container(
          color: Colors.blue,
          width: 200,
          height: 400,
          padding:EdgeInsets.all(30),
          margin: EdgeInsets.only(left: 150,top: 0,right: 0,bottom: 0),
          transform: Matrix4.rotationZ(0.5),
          // cjh todo 如何做圆角，边框，阴影
          child: Text("Container ",style:TextStyle(fontSize: 20,color: Colors.white)),
        )
      )
    );
  }
}
