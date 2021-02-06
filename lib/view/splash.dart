/*
 * @Author: PrendsMoi
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 启动页
 * @FilePath: /flutterApp/lib/view/splash.dart
 * @Date: 2021-02-06 13:57:01
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-06 15:43:42
 */
import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _startHome();
  }

  void _startHome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/image/splash.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
