import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示页面"),
        // 图标按钮
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white,),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text("RaisedButton"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 5, // 按钮阴影效果
                onPressed: () {
                  print("RaisedButton");
                },
              ),
              SizedBox(width: 5),
              // 图标按钮
              RaisedButton.icon(
                onPressed: () {

                },
                icon: Icon(Icons.search),
                label: Text("图标按钮"),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text("圆角按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {

                },
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Container(
                width: 200,
                height: 50,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text("设置宽高"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 5, // 按钮阴影效果
                  onPressed: () {
                    print("RaisedButton");
                  },
                ),
              ),
              Container(
                height: 80,
                child: RaisedButton(
                  child: Text("圆形按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print("圆形按钮");
                  },
                  shape: CircleBorder(
                      side: BorderSide(
                          color: Colors.white
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("自适应按钮"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      print("自适应按钮");
                    },
                  ),
                )
              )
            ],
          ),
          Row(
            children: <Widget>[
              // 扁平化按钮
              FlatButton(
                child: Text("FlatButton"),
                color: Colors.orange,
                textColor: Colors.white,
                onPressed: () {

                },
              ),
              SizedBox(width: 5),
              OutlineButton( // 带边框按钮
                child: Text("OutlineButton"),
                color: Colors.blue, // 背景色无效
                textColor: Colors.green,
                onPressed: () {
                  print("OutlineButton");
                },
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ButtonBar( // 按钮组 ButtonBar
                children: <Widget>[
                  RaisedButton(
                    child: Text("登录"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                    },
                  ),
                  RaisedButton(
                    child: Text("注册"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                    },
                  ),
                  MyButton(text: "自定义按钮", width: 150, height: 80, pressed: () {
                    print("自定义按钮");
                  },),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

/// 自定义按钮组件
class MyButton extends StatelessWidget {

  final text;
  final pressed;
  final double width;
  final double height;

  const MyButton({this.text = "", this.width = 100, this.height = 40, this.pressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: this.width,
      height: this.height,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }

}
