import 'package:flutter/material.dart';

import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

// 底部导航栏
class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;

  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('FlutterDemo',
              style: TextStyle(fontSize: 20, color: Colors.white))),
//      body: StatefulHomePage(), // 在此更换body
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          print(index);
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 30,
        fixedColor: Colors.red,
//        type: BottomNavigationBarType.fixed, // 配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
          ),
        ],
      ),
    );
  }
}

/// StatefulWidget 有状态组件
class StatefulHomePage extends StatefulWidget {
  @override
  _StatefulHomePageState createState() => _StatefulHomePageState();
}

class _StatefulHomePageState extends State<StatefulHomePage> {

  List list = new List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() {
              this.list.add("新增数据1");
              this.list.add("新增数据2");
            });
          },
        )
      ],
    );
  }
}