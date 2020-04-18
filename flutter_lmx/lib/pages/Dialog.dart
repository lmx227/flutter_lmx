import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

  _alertDialog() async {
    // 返回点击按钮带回的result
    var result = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("标题"),
          content: Text("您确定要删除吗？"),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () {
                Navigator.pop(context, 'Cancel');
              },
            ),
            FlatButton(
              child: Text("确定"),
              onPressed: () {
                Navigator.pop(context, 'OK');
              },
            )
          ],
        );
      }
    );
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("选择内容"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: () {
                print("Option A");
                Navigator.pop(context, "A");
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: () {
                print("Option B");
                Navigator.pop(context, "B");
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: () {
                print("Option C");
                Navigator.pop(context, "C");
              },
            ),
          ],
        );
      }
    );
    print(result);
  }

  _modeBottomSheet() async {
    var result = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("分享 A"),
                onTap: () {
                  Navigator.pop(context, "分享A");
                },
              ),
              Divider(),
              ListTile(
                title: Text("分享 B"),
                onTap: () {
                  Navigator.pop(context, "分享B");
                },
              ),
              Divider(),
              ListTile(
                title: Text("分享 C"),
                onTap: () {
                  Navigator.pop(context, "分享C");
                },
              ),
            ],
          ),
        );
    });
    print(result);
  }

  _showToast() {
    Fluttertoast.showToast(
      msg: "提示信息",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 18.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            child: Text("AlertDialog"),
            onPressed: () {
              _alertDialog();
            },
          ),
          RaisedButton(
            child: Text("SimpleDialog"),
            onPressed: () {
              _simpleDialog();
            },
          ),
          RaisedButton(
            child: Text("ModalBottomSheet"),
            onPressed: () {
              _modeBottomSheet();
            },
          ),
          RaisedButton(
            child: Text("Toast"),
            onPressed: () {
              _showToast();
            },
          ),
        ],
      ),
    );
  }
}
