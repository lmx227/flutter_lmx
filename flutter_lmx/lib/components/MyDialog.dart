import 'package:flutter/material.dart';

import 'dart:async';

class MyDialog extends Dialog {
  String title;

  String content;

  Timer timer;

  MyDialog({this.title = "标题", this.content = ""});

  _showTimer(context) {
    timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      if (context == null) {
        print("context null");
        return;
      }
      Navigator.pop(context);
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {

    _showTimer(context); // 定时器关闭Dialog

    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        width: 300,
        height: 300,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: <Widget>[
                  Align(
                    child: Text("${this.title}"),
                    alignment: Alignment.center,
                  ),
                  Align(
                    child: InkWell(
                      // 关闭按钮
                      child: Icon(Icons.close),
                      onTap: () {
                        Navigator.pop(context);
                        timer.cancel(); // 手动关闭时，取消定时器
                      },
                    ),
                    alignment: Alignment.centerRight,
                  )
                ],
              ),
            ),
            Divider(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              child: Text("${this.content}"),
            )
          ],
        ),
      )),
    );
  }
}
