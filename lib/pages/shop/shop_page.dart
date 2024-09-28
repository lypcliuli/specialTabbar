import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ShopPage();
  }
}

class _ShopPage extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ShopPage'),
        ),
        body: SafeArea(child: Center(child: Text('ShopPage'))));
  }
}
