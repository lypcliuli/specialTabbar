import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:special_tab/common/bottom_navigation/bottom_bar_widget.dart';

import 'package:special_tab/pages/home/home_page.dart';
import 'package:special_tab/pages/shop/shop_page.dart';
import 'package:special_tab/pages/massage0/massage_page.dart';
import 'package:special_tab/pages/car/car_page.dart';
import 'package:special_tab/pages/personal/personal_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabPageState();
  }
}

class _TabPageState extends State<TabPage> {
  int currentIndex = 0;
  late List<Widget> pages;
  late List<String> labels;
  late List<Widget> icons;
  late List<Widget> activeIcons;

  @override
  void initState() {
    super.initState();
    initTabDatas();
  }

  void initTabDatas() {
    double size = 22.r;
    pages = [
      const HomePage(),
      const ShopPage(),
      const MassagePage(),
      const CarPage(),
      const PersonalPage()
    ];
    labels = ['Home', 'Shop', 'Massage', 'Car', 'Personal'];
    icons = [
      Image.asset('assets/images/icon_grey.png', width: size, height: size),
      Image.asset('assets/images/icon_grey.png', width: size, height: size),
      Image.asset('assets/images/icon_grey.png', width: size, height: size),
      Image.asset('assets/images/icon_grey.png', width: size, height: size),
      Image.asset('assets/images/icon_grey.png', width: size, height: size)
    ];
    activeIcons = [
      Image.asset('assets/images/icon_selected.png', width: size, height: size),
      Image.asset('assets/images/icon_selected.png', width: size, height: size),
      Image.asset('assets/images/icon_selected.png', width: size, height: size),
      Image.asset('assets/images/icon_selected.png', width: size, height: size),
      Image.asset('assets/images/icon_selected.png', width: size, height: size),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BottomBarWidget(
      pages: pages,
      labels: labels,
      icons: icons,
      activeIcons: activeIcons,
      currentIndex: 0,
      onTapChange: (index) {
        print(' click tabbar index：$index');
      },
    );
  }
}
