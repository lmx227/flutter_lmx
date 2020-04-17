import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {"url": "http://www.itying.com/images/flutter/1.png"},
    {"url": "http://www.itying.com/images/flutter/2.png"},
    {"url": "http://www.itying.com/images/flutter/3.png"},
  ];

  /// 自定义轮播效果
  CustomLayoutOption customLayoutOption =
      new CustomLayoutOption(startIndex: -1, stateCount: 3)
          .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
    new Offset(-370.0, -40.0),
    new Offset(0.0, 0.0),
    new Offset(370.0, -40.0)
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("轮播图Swiper"),
        ),
        body: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Swiper(
//                    itemWidth: 200,
//                    itemHeight: 150,
//                    layout: SwiperLayout.CUSTOM,
//                    customLayoutOption: customLayoutOption,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(imgList[index]["url"],
                          fit: BoxFit.cover);
                    },
                    itemCount: 3,
                    pagination: SwiperPagination(),
                    // 指示器
                    // control: new SwiperControl(), // 左右箭头
                    autoplay: true,
                    // 自动轮播
                    loop: true, // 循环轮播
                  ),
                )),
            SizedBox(height: 30),
            Container(
              child: Swiper(
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: customLayoutOption,
                  itemWidth: 200.0,
                  itemHeight: 150.0,
                  itemBuilder: (context, index) {
                    return Image.network(imgList[index]["url"],
                        fit: BoxFit.cover);
                  },
                  itemCount: 3),
            )
          ],
        ));
  }
}
