/*
 * @Author: PrendsMoi
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 广告详情
 * @FilePath: \flutterApp\lib\view\adDetail.dart
 * @Date: 2021-02-10 15:57:42
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-10 16:42:52
 */
import 'package:flutter/material.dart';

class AdDetail extends StatefulWidget {
  @override
  _AdDetailState createState() => _AdDetailState();
}

class _AdDetailState extends State<AdDetail> {
  // 返回首页 mm
  void _backHome() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: _backHome,
        ),
        centerTitle: true,
        title: Text('广告详情页面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('广告详情页面')],
        ),
      ),
    );
  }
}
