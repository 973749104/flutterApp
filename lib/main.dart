/*
 * @Author: Arvin
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 主入口
 * @FilePath: /flutterApp/lib/main.dart
 * @Date: 2021-02-05 10:56:07
 * @LastEditors: Arvin
 * @LastEditTime: 2021-02-05 14:50:12
 */
import 'package:flutter/material.dart';
import 'package:flutterApp/view/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: App(),
    );
  }
}
