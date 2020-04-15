import 'package:flutter/material.dart';
import 'package:flutterlmx/pages/ProductInfo.dart';

import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';

// 配置路由
final routes = {
  // 路由传值
  '/': (context, {arguments}) => Tabs(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/product': (context, {arguments}) => ProductPage(),
  '/productinfo': (context, {arguments}) => ProductInfoPage(arguments: arguments),
};

// 命名路由 统一处理
RouteFactory onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      return MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
    } else {
      return MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
    }
  }
  return null;
};
