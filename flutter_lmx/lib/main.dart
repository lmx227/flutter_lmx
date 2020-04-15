import 'package:flutter/material.dart';

import 'res/listData.dart';

import 'pages/Tabs.dart';

import 'routes/Routes.dart';

/*
 * 提示 找不到 flutter.so 方法：
 * 命令行 Terminal 输入，编译apk
 * flutter build apk --target-platform=android-arm32
 * 或
 * flutter build apk --target-platform=android-arm64
 */

/*
 * git 提交
 * git push origin master
 * lmx227 / 7 + 3 + 3
 */

void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//        home: Tabs(), // 由 initialRoute 代替初始化
        initialRoute: '/', // 初始化时加载的路由，代替 home
        theme: ThemeData(primarySwatch: Colors.blue),

        // 统一配置命名路由
        onGenerateRoute: onGenerateRoute,

    );
  }
}

/// Text、边框
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      child: Text(
        '你好Flutter你好Flutter你好Flutter你好Flutter你好Flutter你好Flutter你好Flutter',
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.left,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        //ellipsis
        textScaleFactor: 2,
        // 字体放大
        style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w800,
            // 加粗
            fontStyle: FontStyle.italic,
            // 斜体
            decoration: TextDecoration.lineThrough,
            // 下划线
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            // 虚线
            letterSpacing: 5.0 // 字间距
            ),
      ),
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
          // 边框
          color: Colors.yellow,
          border: Border.all(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
//        padding: EdgeInsets.all(10.0),
      padding: EdgeInsets.fromLTRB(10, 30, 5, 20),
      margin: EdgeInsets.all(20.0),
//        transform: Matrix4.translationValues(100, 0, 0), // 平移
//        transform: Matrix4.rotationZ(0.3), // 旋转
//        transform: Matrix4.diagonal3Values(1.2, 1, 1),  // 拉伸
//        alignment: Alignment.topLeft,  // 子控件放置位置
    ));
  }
}

/// 加载网络图片
class ImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      child: Image.network(
        "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
//              alignment: Alignment.topLeft,
//              color: Colors.blue,
//              colorBlendMode: BlendMode.colorBurn,
//              fit:BoxFit.cover
//              repeat: ImageRepeat.repeatX,  // 平铺
      ),
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        // 边框
        color: Colors.yellow,
        border: Border.all(color: Colors.blue, width: 2.0),
      ),
    ));
  }
}

/// 加载圆角图片
class RoundImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      child: ClipOval(
          child: Image.network(
              "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg")),
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        // 边框
        color: Colors.yellow,
        border: Border.all(color: Colors.blue, width: 2.0),
        borderRadius: BorderRadius.circular(150),
        // 通过DecorationImage实现
//            image: DecorationImage(
//              image: NetworkImage("http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg"),
//              fit: BoxFit.cover
//            )
      ),
    ));
  }
}

/// 加载本地图片
class LocalImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      child: Image.asset(
        "images/1.jpg",
      ),
      width: 300.0,
      height: 500.0,
      decoration: BoxDecoration(
        // 边框
        color: Colors.black,
        border: Border.all(color: Colors.blue, width: 2.0),
      ),
    ));
  }
}

/// ListView
class ListViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.settings),
          title: Text('一级标题'),
          subtitle: Text('二级标题二级标题'),
        ),
        ListTile(
          leading: Image.network(
              "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg"),
          title: Text('一级标题'),
          subtitle: Text('二级标题二级标题'),
        ),
        ListTile(
          leading: Image.asset("images/1.jpg"),
          title: Text('一级标题'),
          subtitle: Text('二级标题二级标题'),
        ),
        Image.asset("images/1.jpg"),
        Image.asset("images/2.jpg"),
        Image.asset("images/3.jpg"),
        Image.asset("images/4.jpg"),
        Image.asset("images/5.jpg"),
        Image.asset("images/6.jpg"),
        Image.asset("images/7.jpg"),
        Image.asset("images/8.jpg"),
        Image.asset("images/9.jpg"),
        Image.asset("images/10.jpg"),
      ],
      padding: EdgeInsets.all(10.0),
    );
  }
}

/// Container
class ListView2Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        //
        height: 800,
        child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          Container(
            height: 200,
            padding: EdgeInsets.all(10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.red,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.green,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.blue,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.orange,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.red,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.green,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.blue,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            padding: EdgeInsets.all(10),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.red,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.green,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.blue,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.orange,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.red,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.green,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.blue,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.orange,
                ),
              ],
            ),
          )
        ]));
  }
}

/// 动态列表
class DynamicListViewContent extends StatelessWidget {
  // 自定义方法
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("111111我是标题$i"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}

/// 读取文件列表
class ListViewReadFileContent extends StatelessWidget {
  List<Widget> _getData() {
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}

/// ListView.builder
class ListViewBuilderContent extends StatelessWidget {
//  List list = new List();
//
//  ListViewBuilderContent() {
//    for(var i = 0; i < 20; i++) {
//      this.list.add('我是第$i条');
//    }
//  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: listData.length, itemBuilder: this._getListData);
  }

  Widget _getListData(context, index) {
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
    );
  }
}

/// GridView
class GridViewContent extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Image.network(value["imageUrl"]),
            SizedBox(
              height: 12,
            ),
            Text(
              value["title"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1),
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        padding: EdgeInsets.all(10.0),
//      childAspectRatio: 1.5,
        children: _getListData());
  }
}

/// GridView.builder
class GridViewBuilderContent extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Image.network(listData[index]["imageUrl"]),
          SizedBox(
            height: 12,
          ),
          Text(
            listData[index]["title"],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}

/// Padding
class PaddingContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/3.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/4.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/5.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/6.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/3.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/4.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/5.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset(
                'images/6.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ));
  }
}

/// Row、 Column 水平、垂直布局
/// Expanded
class RowColumnContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 100,
                color: Colors.blue,
                child: Text('你好Flutter'),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  height: 530,
                  child: Image.asset('images/1.jpg'),
                )),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                height: 500,
                child: ListView(
                  children: <Widget>[
                    Container(height: 260, child: Image.asset('images/2.jpg')),
                    SizedBox(height: 10),
                    Container(
                      height: 260,
                      child: Image.asset('images/3.jpg'),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

/// Icon按钮
// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  IconData icon;
  Color color = Colors.red;
  double size = 32.0;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
    );
  }
}

/// Stack、Align、Positioned
class StackContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Icon(Icons.search, size: 40, color: Colors.white),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.settings, size: 40, color: Colors.white),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 300,
                height: 200,
                color: Colors.blue,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 10,
                      child: Icon(Icons.settings_applications,
                          size: 30, color: Colors.white),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 150,
                      child: Icon(Icons.search, size: 30, color: Colors.green),
                    ),
                    Positioned(
                      right: 0,
                      child: Icon(Icons.home, size: 30, color: Colors.yellow),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// AspectRatio 宽高比
class AspectRatioContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 3.0,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

/// Card 卡片
class CardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  value["imageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ),
                title: Text(value["title"]),
                subtitle: Text(value["author"]),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

///Wrap 流布局
class WrapContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      spacing: 10,
      runSpacing: 10,
//      direction: Axis.vertical,
//      alignment: WrapAlignment.spaceEvenly,
//      runAlignment: WrapAlignment.center,
      children: <Widget>[
        MyButton("第一季333333"),
        MyButton("第一dd季"),
        MyButton("第一dfasf季"),
        MyButton("第一adsfdfdsasdfasdf季"),
        MyButton("第一季"),
        MyButton("第一fsd季"),
        MyButton("第一fdasdf季"),
        MyButton("第一adfa季"),
        MyButton("第一季"),
        MyButton("第一dd季"),
        MyButton("第一dfasf季"),
        MyButton("第一adsfdafsdfasdf季"),
        MyButton("第一季"),
        MyButton("第一fsd季"),
        MyButton("第一fdasdf季"),
        MyButton("第一adfa季"),
      ],
    );
  }
}

/// 自定义RaisedButton
class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
