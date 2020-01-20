import 'package:flutter/material.dart';

void main() => runApp(new CaculateDemo());

class CaculateDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// MyHomePage继承自StatefulWidget类，表示它是一个有状态的组件（Stateful widget）
///Stateful widget至少由两个类组成：
/// 一个StatefulWidget类。
/// 一个 State类； StatefulWidget类本身是不变的，但是State类中持有的状态在widget生命周期中可能会发生变化。
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  /// _MyHomePageState类是MyHomePage类对应的状态类。
  /// 看到这里，读者可能已经发现：和CaculateDemo 类不同， MyHomePage类中并没有build方法，取而代之的是，build方法被挪到了_MyHomePageState方法中
  /// 为什么呢？这主要是为了提高开发的灵活性。如果将build()方法放在StatefulWidget中则会有两个问题：
  /// 1. 状态访问不便
  ///   由于状态是保存在State中的，如果build方法在StatefulWidget中，那么build方法和状态分别在两个类中，由于构建用户界面过程需要依赖State，所以build方法将必须加一个State参数，大概是下面这样：
  ///   Widget build(BuildContext context, State state){   }
  ///   这样的话就只能将State的所有状态声明为公开的状态，这样才能在State类外部访问状态！但是，将状态设置为公开后，状态将不再具有私密性，这就会导致对状态的修改将会变的不可控
  /// 2. 继承StatefulWidget不便
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  /// 当按钮点击时，会调用此函数，该函数的作用是先自增_counter，然后调用setState 方法。
  /// setState方法的作用是通知Flutter框架，有状态发生了改变，Flutter框架收到通知后，会执行build方法来根据新的状态重新构建界面
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  /// 构建UI界面的逻辑在build方法中
  @override
  Widget build(BuildContext context) {
    // Scaffold 是 Material 库中提供的页面脚手架，它提供了默认的导航栏、标题和包含主屏幕widget树的body属性
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
