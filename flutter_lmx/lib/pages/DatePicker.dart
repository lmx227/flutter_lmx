import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart';

import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

//const String MIN_DATETIME = "1980-05-12";
//const String MAX_DATETIME = "2100-05-12";
//const String INIT_DATETIME = "2020-04-17";
const String MIN_DATETIME = '2019-05-15 09:23:10';
const String MAX_DATETIME = '2025-06-03 21:11:00';
const String INIT_DATETIME = '2019-05-16 09:00:00';

class DatePickerDemo extends StatefulWidget {
  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {

  var _nowDate = DateTime.now();

  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  _showDatePicker() async {
//    showDatePicker(
//      context: context,
//      initialDate: _nowDate,
//      firstDate: DateTime(1980),
//      lastDate: DateTime(2050)
//    ).then((result) { // 点击OK按钮，获得选择日期结果
//      print(result);
//    });

    var result = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2050),
    );

    print(result);

    setState(() {
      this._nowDate = result;
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
        context: context,
        initialTime: _nowTime
    );

    setState(() {
      this._nowTime = result;
    });
  }

  DateTime _dateTime;
//  String _format = 'yyyy-MMMM-dd'; 只显示日期
  String _format = 'yyyy年M月d日    EEE,H时:m分';
  DateTimePickerLocale _locale = DateTimePickerLocale.zh_cn;

  /// 第三方日期、时间选择器
  _showDateTimePicker() {
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: _dateTime,
      dateFormat: _format,
      locale: _locale,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
//      pickerMode: DateTimePickerMode.date,
      pickerMode: DateTimePickerMode.datetime,
      onCancel: () {
        debugPrint('onCancel');
      },
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dateTime = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("当前日期：" + DateTime.now().toString()),
          SizedBox(height: 10),
          Text("当前时间戳：" + DateTime.now().millisecondsSinceEpoch.toString()),
          SizedBox(height: 10),
          Text("时间戳转日期：" + DateTime.fromMillisecondsSinceEpoch(1589967090998).toString()),
          SizedBox(height: 10),
          // 导入第三方库 date_format
          Text("日期格式转换：" + formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日', ' ', HH, ':', nn, ':', ss])),
          SizedBox(height: 20),

          Text("系统日期时间选择器"),
          InkWell(  // 可以添加点击事件
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${formatDate(_nowDate, [yyyy, '年', mm, '月', dd, '日'])}"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: () {
              _showDatePicker();
            },
          ),
          SizedBox(height: 20),
          InkWell(  // 可以添加点击事件
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${_nowTime.format(context)}"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: () {
              _showTimePicker();
            },
          ),
          SizedBox(height: 20),

          Text("第三方日期时间选择器"),
          InkWell(  // 可以添加点击事件
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${formatDate(_dateTime, [yyyy, '年', mm, '月', dd, '日', ' ', HH, ':', nn, ':', ss])}"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: () {
              _showDateTimePicker();
            },
          ),
        ],
      ),
    );
  }
}
