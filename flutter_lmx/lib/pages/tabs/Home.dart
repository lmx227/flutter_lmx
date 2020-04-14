import 'package:flutter/material.dart';

import '../Search.dart';
import 'Category.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed: () {

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchPage()
              )
            );

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary
        ),
      ],
    );
  }
}
