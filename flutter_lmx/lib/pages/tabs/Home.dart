import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
                child: Text("跳转到搜索页面"),
                onPressed: () {
                  // 路由跳转，命名路由
                  Navigator.pushNamed(context, '/search', arguments: {
                    "id": 123
                  });
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary
            ),
            RaisedButton(
                child: Text("跳转到商品页面"),
                onPressed: () {
                  // 路由跳转，命名路由
                  Navigator.pushNamed(context, '/product');
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary
            ),
            RaisedButton(
              child: Text("跳转到AppBarDemoPage"),
              onPressed: () {
                Navigator.pushNamed(context, '/appBarDemo');
              },
            ),
            RaisedButton(
              child: Text("跳转到TabBarControllerPage"),
              onPressed: () {
                Navigator.pushNamed(context, '/tabBarController');
              },
            ),
            RaisedButton(
              child: Text("跳转到按钮演示页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/buttonPage');
              },
            ),
            RaisedButton(
              child: Text("跳转到表单演示页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/textFieldDemo');
              },
            ),
            RaisedButton(
              child: Text("跳转到Checkbox页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/checkboxDemo');
              },
            ),
            RaisedButton(
              child: Text("学员登记系统"),
              onPressed: () {
                Navigator.pushNamed(context, '/formDemo');
              },
            ),
            RaisedButton(
              child: Text("DatePicker"),
              onPressed: () {
                Navigator.pushNamed(context, '/datePicker');
              },
            ),
            RaisedButton(
              child: Text("Swiper轮播图"),
              onPressed: () {
                Navigator.pushNamed(context, '/swiper');
              },
            ),
            RaisedButton(
              child: Text("Dialog"),
              onPressed: () {
                Navigator.pushNamed(context, '/dialog');
              },
            ),
          ],
        )
      ],
    );
  }
}
