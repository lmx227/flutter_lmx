import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("二级注册页面"),
      ),
      body: Column(
        children: <Widget>[
          Text("输入验证码"),
          RaisedButton(
            child: Text("下一步"),
            onPressed: () {
              Navigator.pushNamed(context, '/registerThird');
              // 替换路由
//              Navigator.pushReplacementNamed(context, '/registerThird');
            },
          )
        ],
      ),
    );
  }
}