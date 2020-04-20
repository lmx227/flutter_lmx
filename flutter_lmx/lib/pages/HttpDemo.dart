import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:convert' as convert;

class HttpDemoPage extends StatefulWidget {
  @override
  _HttpDemoPageState createState() => _HttpDemoPageState();
}

class _HttpDemoPageState extends State<HttpDemoPage> {

  List _list = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    _getData();
  }

  _getData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      print(response.body);
      setState(() {
        _list = json.decode(response.body)["result"];
      });
    } else {
      print("错误码：${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpDemo"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("http get"),
            onPressed: () {
              _getData();
            },
          ),
          Text("加载中"),
          ListView(
            children: this._list.map((value) {
              return ListTile(
                title: Text(value["title"]),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
