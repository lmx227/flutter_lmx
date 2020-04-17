import 'package:flutter/material.dart';
import 'package:flutterlmx/pages/ProductInfo.dart';

import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';

import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/User.dart';
import '../pages/Button.dart';
import '../pages/TextField.dart';
import '../pages/CheckBox.dart';
import '../pages/FormDemo.dart';
import '../pages/DatePicker.dart';
import '../pages/Swiper.dart';

// 配置路由
final routes = {
  // 路由传值
  '/': (context, {arguments}) => Tabs(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/product': (context, {arguments}) => ProductPage(),
  '/productinfo': (context, {arguments}) => ProductInfoPage(arguments: arguments),
  '/login': (context, {arguments}) => LoginPage(),
  '/registerFirst': (context, {arguments}) => RegisterFirstPage(),
  '/registerSecond': (context, {arguments}) => RegisterSecondPage(),
  '/registerThird': (context, {arguments}) => RegisterThirdPage(),
  '/appBarDemo': (context) => AppBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage(),
  '/buttonPage': (context) => ButtonPage(),
  '/textFieldDemo': (context) => TextFieldDemoPage(),
  '/checkboxDemo': (context) => CheckBoxDemo(),
  '/formDemo': (context) => FormDemoPage(),
  '/datePicker': (context) => DatePickerDemo(),
  '/swiper': (context) => SwiperPage(),
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
