import 'package:flutter/material.dart';

class CarPage extends StatefulWidget {
  const CarPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarPage();
  }
}

class _CarPage extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CarPage'),
        ),
        body: SafeArea(child: Center(child: Text('CarPage'))));
  }
}
