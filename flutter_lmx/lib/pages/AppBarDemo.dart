import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Tab数量
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),
          centerTitle: true,
          backgroundColor: Colors.green,
//        leading: IconButton(
//          icon: Icon(Icons.menu),
//          onPressed: () {
//            print('menu clicked');
//          },
//        ),
//          actions: <Widget>[
//            IconButton(
//              icon: Icon(Icons.search),
//              onPressed: () {
//                print('search clicked');
//              },
//            ),
//            IconButton(
//              icon: Icon(Icons.settings),
//              onPressed: () {
//                print('settings clicked');
//              },
//            )
//          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "热门"),
              Tab(text: "推荐")
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
