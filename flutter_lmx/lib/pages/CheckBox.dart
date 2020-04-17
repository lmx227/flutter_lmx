import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var _isChecked = true;

  int sex = 1;

  int type = 11;

  bool isSwitchOpen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: this._isChecked,
                activeColor: Colors.red,
                onChanged: (isChecked) {
                  setState(() {
                    this._isChecked = isChecked;
                  });
                },
              ),
              Text(_isChecked ? "选中" : "未选中")
            ],
          ),
          SizedBox(height: 20),
          CheckboxListTile(
            value: this._isChecked,
            title: Text("标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.help),
            onChanged: (isChecked) {
              setState(() {
                this._isChecked = isChecked;
              });
            },
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              SizedBox(width: 20),
              Text("男"),
              Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("女"),
              Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
              )
            ],
          ),
          SizedBox(height: 20),
          RadioListTile(
            value: 1,
            groupValue: this.type,
            title: Text("一级标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.help),
            selected: this.type == 1,
            onChanged: (v) {
              setState(() {
                this.type = v;
              });
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: this.type,
            title: Text("一级标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.help),
            selected: this.type == 2,
            onChanged: (v) {
              setState(() {
                this.type = v;
              });
            },
          ),
          SizedBox(height: 20),
          Switch(
            value: this.isSwitchOpen,
            onChanged: (isOpen) {
              setState(() {
                this.isSwitchOpen = isOpen;
              });
            },
          )
        ],
      ),
    );
  }
}
