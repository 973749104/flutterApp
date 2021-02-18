/*
 * @Author: PrendsMoi
 * @GitHub: https://github.com/973749104
 * @Blog: https://liuhgxu.com
 * @Description: 列表页面
 * @FilePath: \flutterApp\lib\view\list.dart
 * @Date: 2021-02-06 10:45:56
 * @LastEditors: PrendsMoi
 * @LastEditTime: 2021-02-18 17:29:13
 */
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class GoodList extends StatefulWidget {
  @override
  _GoodListState createState() => _GoodListState();
}

class _GoodListState extends State<GoodList> {
  // 是否触顶部
  bool _isTop = true;
  // 选中的tab—key
  int _selectKey = 0;
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

  // 筛选组件
  List<Widget> _tabsList() {
    List listData = [
      {"title": '综合', "key": 0},
      {"title": '按销量', "key": 1},
      {"title": '按价格', "key": 2},
    ];
    var tabs = listData.map(
      (e) => Container(
        margin: EdgeInsets.only(left: 15.0),
        child: InkWell(
          onTap: () => {
            _clickTab(e['key']),
          },
          child: Text(
            e['title'],
            style: TextStyle(
              color: _selectKey == e['key'] ? Colors.red : Colors.black,
            ),
          ),
        ),
      ),
    );

    return tabs.toList();
  }

  // 筛选
  void _clickTab(int key) {
    if (_selectKey == key) return;
    setState(() {
      _selectKey = key;
    });
  }

  //切换置顶状态
  void _changeIsTop(double top) {
    // setState(() {
    //   _top = (top > 0);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isTop ? Colors.red : Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                leadingWidth: 25.0,
                title: Container(
                  margin: EdgeInsets.only(right: 10.0, left: 10.0),
                  height: 32.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 35.0,
                        height: 32.0,
                        child: Icon(
                          Icons.search,
                          size: 22.0,
                          color: Color(0xFF999999),
                        ),
                      ),
                    ],
                  ),
                ),
                toolbarHeight: 46.0,
                floating: true,
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: PersistentHeaderBuilder(
                  builder: (context, offset) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: _tabsList(),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverGrid.count(
                crossAxisCount: 2,
                children: _itemList(),
                // crossAxisSpacing: 0.0,
                childAspectRatio: 2 / 3,
                mainAxisSpacing: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PersistentHeaderBuilder extends SliverPersistentHeaderDelegate {
  final double max;
  final double min;
  final Widget Function(
    BuildContext context,
    double offset,
  ) builder;

  PersistentHeaderBuilder({
    this.max = 40,
    this.min = 40,
    @required this.builder,
  }) : assert(
          max >= min && builder != null,
        );

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return builder(context, shrinkOffset);
  }

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min;

  @override
  bool shouldRebuild(covariant PersistentHeaderBuilder oldDelegate) =>
      builder != oldDelegate.builder;
}
