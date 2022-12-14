import 'package:flutter/material.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("나의 당근"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
        bottom: const PreferredSize(
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
          preferredSize: Size.fromHeight(0.5),
        ),
      ),
    );
  }
}
