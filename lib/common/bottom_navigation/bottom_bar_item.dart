import 'package:flutter/material.dart';

class BottomBarItem extends StatefulWidget {
  const BottomBarItem({super.key, required this.builder});

  final WidgetBuilder builder;

  @override
  State createState() => _BottomBarItem();
}

class _BottomBarItem extends State<BottomBarItem>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    controller.forward();
    animation = Tween<double>(begin: 0.8, end: 1).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(scale: animation, child: widget.builder(context));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
