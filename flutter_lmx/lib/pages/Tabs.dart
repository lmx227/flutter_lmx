import 'package:flutter/material.dart';

import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

// 底部导航栏
class Tabs extends StatefulWidget {

  final index;

  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;

  _TabsState(index) {
    this._currentIndex = index;
  }

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
          // print(index);
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

      // 左侧边栏
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("月影飞烟"),
                    accountEmail: Text("lmx227@163.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("http://www.itying.com/images/flutter/3.png"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("http://www.itying.com/images/flutter/2.png"),
                        fit: BoxFit.cover
                      ),
                    ),
                    otherAccountsPictures: <Widget>[
                      Image.network("http://www.itying.com/images/flutter/4.png"),
                      Image.network("http://www.itying.com/images/flutter/5.png"),
                    ],
                  )
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
              onTap: () {
                Navigator.of(context).pop(); // 隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置"),
            ),
            Divider(),
          ],
        )
      ),

      // 右侧边栏
      endDrawer: Drawer(
        child: Text("右侧边栏"),
      ),

      // 浮动按钮，替换分类按钮
      floatingActionButton: Container(
        width: 60,
        height: 60,
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white
        ),
        child: FloatingActionButton(
          child: Icon(Icons.category),
          onPressed: () {
            // 改变 _currentIndex
            setState(() {
              this._currentIndex = 1;
            });
          },
          backgroundColor: this._currentIndex == 1 ? Colors.red : Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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