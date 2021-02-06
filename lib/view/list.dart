/*
 * @Author: PrendsMoi
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 列表页面
 * @FilePath: /flutterApp/lib/view/list.dart
 * @Date: 2021-02-06 10:45:56
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-06 11:33:21
 */
import 'package:flutter/material.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('列表'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('列表')],
        ),
      ),
    );
  }
}
