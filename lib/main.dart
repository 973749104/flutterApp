/*
 * @Author: PrendsMoi
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 说明
 * @FilePath: \flutterApp\lib\main.dart
 * @Date: 2021-02-07 17:52:19
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-07 18:39:44
 */
import 'package:PrendsMoiApp/route/index.dart';
import 'package:PrendsMoiApp/view/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PrendsMoi',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: routes,
      // 生成路由
      onGenerateRoute: onGenerateRoutes,
      // 路由切换监听
      navigatorObservers: [MyRouteObserver()],
      home: Splash(),
    );
  }
}
