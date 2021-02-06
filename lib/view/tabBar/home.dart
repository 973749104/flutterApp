/*
 * @Author: Arvin
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 首页
 * @FilePath: /flutterApp/lib/view/tabBar/home.dart
 * @Date: 2021-02-05 14:33:03
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-06 11:02:33
 */
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('home'),
            RaisedButton(
              child: Text('跳转列表'),
              onPressed: () {
                Navigator.pushNamed(context, '/list');
              },
            )
          ],
        ),
      ),
    );
  }
}
