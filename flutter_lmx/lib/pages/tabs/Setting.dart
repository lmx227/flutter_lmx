import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("这是文本"),
        ),
        ListTile(
          title: Text("这是文本"),
        ),
        ListTile(
          title: Text("这是文本"),
        ),
        ListTile(
          title: Text("这是文本"),
        ),

        RaisedButton(
          child: Text("登录"),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        RaisedButton(
          child: Text("注册"),
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
        )
      ],
    );
  }
}
