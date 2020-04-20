import 'dart:convert';
import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:flutterlmx/components/MyDialog.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

//    Map userInfo = {
//      "username": "张三",
//      "age": 20,
//    };
//    print(userInfo);
//
//    var a = json.encode(userInfo); // 转换为 json 格式
//    print(a is String);
//    print(a);
//
//    Map tempMap = json.decode(a); // json 格式转换为Map
//    print(tempMap);
  }

  _getData() async {
    // TODO
    var apiUrl = "";

    var response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
    } else {
      print("错误码：${response.statusCode}");
    }
  }

  _postData() async {
    // TODO
    var apiUrl = "";

    var response = await http.post(apiUrl, body: {'username': '张三', 'age': '20'});
    if (response.statusCode == 200) {
      print(json.decode(response.body));
    } else {
      print("错误码：${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Wrap(
          spacing: 10,
          children: <Widget>[
//            RaisedButton(
//                child: Text("跳转到搜索页面"),
//                onPressed: () {
//                  // 路由跳转，命名路由
//                  Navigator.pushNamed(context, '/search', arguments: {
//                    "id": 123
//                  });
//                },
//                color: Theme.of(context).accentColor,
//                textTheme: ButtonTextTheme.primary
//            ),
//            RaisedButton(
//                child: Text("跳转到商品页面"),
//                onPressed: () {
//                  // 路由跳转，命名路由
//                  Navigator.pushNamed(context, '/product');
//                },
//                color: Theme.of(context).accentColor,
//                textTheme: ButtonTextTheme.primary
//            ),
            RaisedButton(
              child: Text("AppBarDemoPage"),
              onPressed: () {
                Navigator.pushNamed(context, '/appBarDemo');
              },
            ),
            RaisedButton(
              child: Text("TabBarControllerPage"),
              onPressed: () {
                Navigator.pushNamed(context, '/tabBarController');
              },
            ),
            RaisedButton(
              child: Text("按钮演示页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/buttonPage');
              },
            ),
            RaisedButton(
              child: Text("表单演示页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/textFieldDemo');
              },
            ),
            RaisedButton(
              child: Text("Checkbox"),
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
            RaisedButton(
              child: Text("自定义Dialog"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return MyDialog(title: "标题", content: "哈哈哈哈哈哈哈哈哈啊啊啊");
                  }
                );
              },
            ),
            RaisedButton(
              child: Text("HttpDemo"),
              onPressed: () {
                Navigator.pushNamed(context, '/httpDemo');
              },
            ),
          ],
        )
      ],
    );
  }
}
