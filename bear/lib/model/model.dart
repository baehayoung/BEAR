import 'package:flutter/material.dart';

class TabInfo {
  List<Widget> pages;
  final List<BottomNavigationBarItem> tabs;

  TabInfo({
    required this.pages,
    required this.tabs,
  });
}
