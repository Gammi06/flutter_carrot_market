import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView.separated(
        itemCount: productList.length,
        itemBuilder: (context, index) => ProductItem(productList[index]),
        separatorBuilder: (context, index) => const Divider(
          indent: 16,
          endIndent: 16,
          color: Colors.grey,
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          Text("좌동"),
          SizedBox(width: 4.0), //진짜 할때는 사이즈 갭을 따로 상수로 만들어두고 사용할 것
          Icon(CupertinoIcons.chevron_down, size: 15),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_dash)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
      ],
      bottom: PreferredSize(
        // 선호하는 크기
        preferredSize: Size.fromHeight(0.5),
        child: Divider(
          thickness: 0.5,
          height: 0.5,
          color: Colors.orange,
        ), // 얇은 선을 긋는 위젯
      ),
    );
  }
}
