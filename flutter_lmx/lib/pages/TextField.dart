import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {

  var _username = TextEditingController();

  var _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _username,
              decoration: InputDecoration(
                hintText: "请输入用户名",
                border: OutlineInputBorder(),
                labelText: "用户名"
              ),
              onChanged: (value) {
                // 获取文本框中的内容
                setState(() {
                  _username.text = value;
                });
              },
            ),
            SizedBox(height: 20),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "密码",
                border: OutlineInputBorder(),
                labelText: "密码",
              ),
              onChanged: (value) {
                setState(() {
                  this._password.text = value;
                });
              },
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 50,
              child: RaisedButton(
                child: Text("登录"),
                onPressed: () {
                  print("用户名：" + this._username.text);
                  print("密码：" + this._password.text);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )

          ],
        ),
      ),
    );
  }
}
