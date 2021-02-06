/*
 * @Author: Arvin
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 路由
 * @FilePath: /flutterApp/lib/route/index.dart
 * @Date: 2021-02-05 17:21:47
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-06 16:42:37
 */

import 'package:flutterApp/view/app.dart';
import 'package:flutterApp/view/list.dart';
import 'package:flutterApp/view/splash.dart';

final routes = {
  // 首页
  '/home': (context, {arguments}) => new App(),
  // 启动页
  '/splash': (context) => new Splash(),
  // 列表页
  '/list': (context) => new List()
};

// final Function onGenerateRoute = () {}
