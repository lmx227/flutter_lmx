import 'package:flutter/material.dart';

import '../Form.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text("跳转到表单页面"),
            onPressed: () {
              // 路由跳转，命名路由
              Navigator.pushNamed(context, '/form', arguments: {
                "title": "表单页面123"
              });
              // 普通路由传值
//              Navigator.of(context).push(MaterialPageRoute(
//                builder: (context) => FormPage(title: "我是跳转传值",)
//              ));
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary
        )
      ],
    );
  }
}
