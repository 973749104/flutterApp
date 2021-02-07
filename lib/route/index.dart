/*
 * @Author: Arvin
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 路由
 * @FilePath: \flutterApp\lib\route\index.dart
 * @Date: 2021-02-05 17:21:47
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-07 18:37:56
 */
import 'package:flutter/material.dart';
import 'package:PrendsMoiApp/view/app.dart';
import 'package:PrendsMoiApp/view/list.dart';
import 'package:PrendsMoiApp/view/splash.dart';

final routes = {
  // 首页
  '/home': (context, {arguments}) => new App(),
  // 启动页
  '/splash': (context) => new Splash(),
  // 列表页
  '/list': (context) => new List()
};

// 固定写法
final Function onGenerateRoutes = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  } else {
    throw new Exception('Invalid route: ${settings.name}');
  }
};

// 路由观察
class MyRouteObserver extends NavigatorObserver {
  @override
  // 当调用Navigator.push时回调
  void didPush(Route route, Route preRoute) {
    //可通过route.settings获取路由相关内容
    //route.currentResult获取返回内容
    print('route change: route');
    print(route);
    print('route change: preRoute');
    print(preRoute);
  }
}
