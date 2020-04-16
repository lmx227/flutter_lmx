import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

/// 1、继承 SingleTickerProviderStateMixin
class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {

  // 2、声明 TabController
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// 3、初始化 TabController
    _tabController = TabController(
      vsync: this,
      length: 2   // tab 个数
    );

    // 通过监听，实现自定义功能
    _tabController.addListener(() {
      // print(_tabController.index);
      setState(() {
        // TODO 控制页面状态变更

      });
    });
  }

  /// 生命周期函数
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          // 4、TabBar 添加 controller
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text: "热销"),
            Tab(text: "推荐"),
          ],
        ),
      ),
      body: TabBarView(
        // 5、TabBarView 添加 controller
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text("热销"),
          ),
          Center(
            child: Text("推荐"),
          ),
        ],
      ),
    );
  }
}
