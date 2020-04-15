import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final arguments;

  LoginPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录页面"),
      ),
      body: Column(
        children: <Widget>[
          Text("用户名"),
          Text("密码"),
          RaisedButton(
            child: Text("立即登录"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}