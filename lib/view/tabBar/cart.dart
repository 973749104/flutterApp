/*
 * @Author: Arvin
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 购物车
 * @FilePath: /flutterApp/lib/view/tabBar/cart.dart
 * @Date: 2021-02-05 14:48:48
 * @LastEditors: Arvin
 * @LastEditTime: 2021-02-05 14:49:26
 */
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('cart'),
          ],
        ),
      ),
    );
  }
}
