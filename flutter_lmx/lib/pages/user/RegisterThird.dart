import 'package:flutter/material.dart';

import '../Tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("三级注册页面"),
      ),
      body: Column(
        children: <Widget>[
          Text("输入密码"),
          RaisedButton(
            child: Text("完成注册"),
            onPressed: () {
              // 返回根页面，并制定 Tab 索引
              Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => new Tabs(index: 2)),
                  (route) => route == null
              );
//              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}