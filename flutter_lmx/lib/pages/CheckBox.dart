import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var _isChecked = true;

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
        ],
      ),
    );
  }
}
