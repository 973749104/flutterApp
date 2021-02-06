/*
 * @Author: Arvin
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 主入口
 * @FilePath: /flutterApp/lib/main.dart
 * @Date: 2021-02-05 10:56:07
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-06 17:54:27
 */
import 'package:flutter/material.dart';
import 'package:flutterApp/route/index.dart';
import 'package:flutterApp/view/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: routes,
      // initialRoute: '/splash',
      home: new Splash(),
    );
  }
}
