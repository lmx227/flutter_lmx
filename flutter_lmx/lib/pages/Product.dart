import 'package:flutter/material.dart';

import '../pages/ProductInfo.dart';

/// 商品页面
class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("商品页面"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text("跳转到商品详情页面"),
                onPressed: () {
                  // 路由跳转，命名路由
                  Navigator.pushNamed(context, '/productinfo',
                      arguments: {"pid": 456});
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary),
          ],
        )
    );
  }
}
