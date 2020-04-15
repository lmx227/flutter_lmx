import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册页面"),
      ),
      body: Column(
        children: <Widget>[
          Text("输入手机号"),
          RaisedButton(
            child: Text("下一步"),
            onPressed: () {
              Navigator.pushNamed(context, '/registerSecond');
              // 路由替换
//              Navigator.pushReplacementNamed(context, '/registerSecond');
            },
          )
        ],
      ),
    );
  }
}
