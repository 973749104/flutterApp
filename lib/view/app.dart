/*
 * @Author: Arvin
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 主体Layout
 * @FilePath: /flutterApp/lib/view/app.dart
 * @Date: 2021-02-05 11:26:08
 * @LastEditors: Arvin
 * @LastEditTime: 2021-02-05 15:01:51
 */
import 'package:flutter/material.dart';
import 'package:flutterApp/view/tabBar/cart.dart';
import 'package:flutterApp/view/tabBar/home.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // 视图列表
  List _tabBarList = [
    Home(),
    Cart(),
  ];
  // 当前视图
  int _selectIndex = 0;

  // 切换当前tabBar
  void _ChangeView(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  // setState() 更新state视图，触发build
  // 初始化
  @override
  void initState() {
    super.initState();
  }

  // 当State对象的依赖关系发生变化时，这个函数总会被 Framework 调用
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  // 构建视图
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _tabBarList[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: '购物车')
          // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        ],
        onTap: _ChangeView,
        currentIndex: _selectIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
    );
  }

  // 当State被暂时从视图树中移除时，会调用这个函数
  void deactivate() {
    super.deactivate();
  }

  // 当 State 被永久的从视图树中移除，会调用该函数
  void dispose() {
    super.dispose();
  }

  // 当组件的状态改变的时候就会调用didUpdateWidget
  void didUpdateWidget(covariant oldWidget) {
    super.didUpdateWidget(oldWidget);
  }
}
