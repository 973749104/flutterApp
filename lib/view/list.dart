/*
 * @Author: PrendsMoi
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 列表页面
 * @FilePath: \flutterApp\lib\view\list.dart
 * @Date: 2021-02-06 10:45:56
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-10 18:19:12
 */
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class GoodList extends StatefulWidget {
  @override
  _GoodListState createState() => _GoodListState();
}

class _GoodListState extends State<GoodList> {
// 列表组件
  List<Widget> _itemList() {
    List listData = [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      0,
      1,
      4,
      5,
      6,
      7,
      7,
      7,
      7,
      7,
      7,
      7,
      7,
      7,
    ];
    final String _imgUrl =
        'https://gd1.alicdn.com/imgextra/i2/2203450431156/O1CN01HpEKjJ1KPUOro9v3h_!!2203450431156.jpg_400x400.jpg';
    var list = listData.asMap().map((i, item) {
      return MapEntry(
        i,
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          child: Column(
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: _imgUrl,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
              Text('商品名称 $i'),
            ],
          ),
        ),
      );
    });
    return list.values.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('列表'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: _itemList(),
        // crossAxisSpacing: 0.0,
        childAspectRatio: 2 / 3,
        mainAxisSpacing: 5.0,
        // padding: EdgeInsets.all(20),
      ),
    );
  }
}
