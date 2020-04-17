import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {

  String username;
  int sex = 1;

  void _sexChanged(value) {
    setState(() {
      this.sex = value;
    });
  }

  // 爱好
  List hobby = [
    {
      "checked": false,
      "title": "吃饭"
    },
    {
      "checked": false,
      "title": "睡觉"
    },
    {
      "checked": true,
      "title": "写代码"
    },
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for(var i = 0; i < this.hobby.length; i++) {
      tempList.add(
        Row(
          children: <Widget>[
            Text(this.hobby[i]["title"] + ": "),
            Checkbox(
              value: this.hobby[i]["checked"],
              onChanged: (value) {
                setState(() {
                  this.hobby[i]["checked"] = value;
                });
              },
            )
          ],
        )

      );
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学员登记系统"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "输入用户信息"
              ),
              onChanged: (v) {
                setState(() {
                  this.username = v;
                });
              },
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                  value: 1,
                  onChanged: _sexChanged,
                  groupValue: this.sex,
                ),
                Text("女"),
                Radio(
                  value: 2,
                  onChanged: _sexChanged,
                  groupValue: this.sex,
                ),
              ],
            ),

            SizedBox(height: 20),

            Column(
              children: this._getHobby(),
            ),

            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("登录"),
                onPressed: () {
                  print("姓名：" + this.username);
                  print("性别：" + (this.sex == 1 ? "男" : "女"));
                  print("爱好：" + this.hobby.toString());
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
