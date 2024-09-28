import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:special_tab/common/bottom_navigation/bottom_bar_item.dart';

class BottomBarWidget extends StatefulWidget {
  BottomBarWidget(
      {super.key,
      required this.pages,
      required this.labels,
      required this.icons,
      required this.activeIcons,
      this.onTapChange,
      this.currentIndex}) {
    if (pages.length != icons.length &&
        pages.length != labels.length &&
        pages.length != activeIcons.length) {
      throw Exception('传入的数句数组长度不一致');
    }
  }
  final List<Widget> pages;
  final List<String> labels;
  final List<Widget> icons;
  final List<Widget> activeIcons;
  final ValueChanged<int>? onTapChange;
  int? currentIndex;

  @override
  State<StatefulWidget> createState() {
    return _BottomBarWidget();
  }
}

class _BottomBarWidget extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: IndexedStack(
        index: widget.currentIndex ?? 0,
        children: widget.pages,
      )),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent),
          child: Stack(alignment: AlignmentDirectional.topCenter, children: [
            Container(
                margin: EdgeInsets.only(top: 10.h),
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Color.fromARGB(255, 214, 211, 211),
                            width: 0.5.w))),
                child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    selectedItemColor: Colors.black,
                    unselectedItemColor: Colors.grey,
                    selectedIconTheme: const IconThemeData(color: Colors.black),
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.grey),
                    items: _barItemList(),
                    backgroundColor: Colors.white,
                    currentIndex: widget.currentIndex ?? 0,
                    onTap: (index) {
                      widget.currentIndex = index;
                      widget.onTapChange?.call(index);
                      setState(() {});
                    })),
            Positioned(
                top: 2.5.h,
                left: 0,
                right: 0,
                child: _topWidget(widget.currentIndex ?? 0))
          ])),
    );
  }

  Widget _topWidget(int currentIndex) {
    List<Widget> list = [];
    for (var i = 0; i < widget.labels.length; i++) {
      list.add(_topItem(currentIndex == i));
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, children: list);
  }

  Widget _topItem(bool isShow) {
    return isShow == true
        ? Container(
            color: Colors.white,
            child: Image.asset('assets/images/half_tab_icon.png',
                fit: BoxFit.fill, height: 10.h, width: 20.w))
        : SizedBox(height: 10.h, width: 20.w);
  }

  List<BottomNavigationBarItem> _barItemList() {
    List<BottomNavigationBarItem> items = [];
    for (int i = 0; i < widget.pages.length; i++) {
      items.add(BottomNavigationBarItem(
        label: widget.labels[i],
        icon: widget.icons[i],
        activeIcon: BottomBarItem(builder: (context) {
          return widget.activeIcons[i];
        }),
      ));
    }
    return items;
  }
}
