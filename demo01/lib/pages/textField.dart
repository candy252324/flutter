import 'package:flutter/material.dart';

/// Opens an [AlertDialog] showing what the user typed.
class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => new _ExampleWidgetState();
}

/// State for [TextFieldPageDemo] widgets.
class _ExampleWidgetState extends State<TextFieldDemo> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("输入框"),
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 输入框
            new TextField(
              controller: _controller,
              decoration: new InputDecoration(
                hintText: '请输入...', // 提示文案
              ),
            ),
            new RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  child: new AlertDialog(
                    title: new Text('您输入的内容是：'),
                    content: new Text(_controller.text),
                  ),
                );
              },
              child: new Text('DONE'),
            ),
          ],
        ));
  }
}
