/*
 * @Author: PrendsMoi
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 启动页
 * @FilePath: \flutterApp\lib\view\splash.dart
 * @Date: 2021-02-06 13:57:01
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-07 23:49:03
 */
import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
// import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int _time = 10;
  String _bingImg = "";

  void _getBingImg() async {
    var _httpClient = new HttpClient();
    try {
      const url = 'https://v1.alapi.cn/api/bing?format=json';
      var request = await _httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        String json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        print(data['data']['url']);
        setState(() {
          _bingImg = data['data']['url'];
        });
      }
    } catch (e) {
      print(e);
    }
    _httpClient.close();
  }

  void _goToHome() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    super.initState();
    _getBingImg();
  }

  Widget build(BuildContext context) {
    print('{$_bingImg}/both/1080x1090');
    return Scaffold(
      body: Stack(
        children: [
          _bingImg.isNotEmpty
              ? FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: '$_bingImg!/both/1080x1090',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                )
              : SizedBox.shrink(),
          Positioned(
            right: 30.0,
            bottom: 50.0,
            child: InkWell(
              onTap: _goToHome,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                width: 85.0,
                child: Text(
                  '跳过 $_time',
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
