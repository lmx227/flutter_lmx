import 'package:flutter/material.dart';

import '../Form.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.green,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.white,
                  tabs: <Widget>[
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                  ],
                ),
              )
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
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第三个tab"),
                ),
                ListTile(
                  title: Text("第三个tab"),
                ),
                ListTile(
                  title: Text("第三个tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第四个tab"),
                ),
                ListTile(
                  title: Text("第四个tab"),
                ),
                ListTile(
                  title: Text("第四个tab"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
