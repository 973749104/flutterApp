/*
 * @Author: PrendsMoi
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 启动页
 * @FilePath: \flutterApp\lib\view\splash.dart
 * @Date: 2021-02-06 13:57:01
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-10 17:30:24
 */
import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer _timer;
  int _time = 3;
  String _bingImg = "";

  // 获取bing壁纸
  void _getBingImg() async {
    var _httpClient = new HttpClient();
    try {
      const url = 'https://v1.alapi.cn/api/bing?format=json';
      var request = await _httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        String json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        setState(() {
          _bingImg = data['data']['bing'];
        });
        _coutdown();
      }
    } catch (e) {
      print(e);
    }
    _httpClient.close();
  }

  // 前往首页
  void _goToHome() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  // 跳转广告详情
  void _goAdDetail() {
    Navigator.pushReplacementNamed(context, '/adDetail');
  }

  // 倒计时
  void _coutdown() {
    const oneSec = const Duration(seconds: 1);

    var callback = (timer) => {
          setState(() {
            if (_time < 1) {
              _goToHome();
            } else {
              _time -= 1;
            }
          })
        };
    _timer = Timer.periodic(oneSec, callback);
  }

  @override
  void initState() {
    super.initState();
    _getBingImg();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _bingImg.isNotEmpty
              ? InkWell(
                  onTap: _goAdDetail,
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: '$_bingImg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.fill,
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
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
    _timer.cancel();
    super.dispose();
  }
}
