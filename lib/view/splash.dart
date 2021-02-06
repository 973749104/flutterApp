/*
 * @Author: PrendsMoi
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 启动页
 * @FilePath: /flutterApp/lib/view/splash.dart
 * @Date: 2021-02-06 13:57:01
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-06 17:52:17
 */
import 'package:flutter/material.dart';
// import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // int _time = 10;

  void _goToHome() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Image.asset(
            "assets/image/splash.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
            right: 30.0,
            bottom: 50.0,
            child: InkWell(
              onTap: _goToHome,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                width: 85.0,
                child: Text(
                  '跳过',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0x66000000),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(
                    width: 0.33,
                    color: Color(0xffe5e5e5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    print('splash被移除');
    super.dispose();
  }
}
