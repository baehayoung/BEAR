import 'package:flutter/material.dart';
import 'package:bear/model/model.dart';

class CustomTabBar extends StatefulWidget {
  final int idx;
  final TabInfo children;

  // ignore: use_key_in_widget_constructors
  const CustomTabBar(this.children, [this.idx = 0]);

  @override
  State<CustomTabBar> createState() => _TabBarState();
}

class _TabBarState extends State<CustomTabBar> {
  int _currentIdx = 0;

  @override
  void initState() {
    super.initState();
    _currentIdx = widget.idx;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.children.pages.elementAt(_currentIdx),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: const Color.fromARGB(255, 241, 131, 28),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIdx,
        onTap: (selectIdx) {
          setState(() {
            _currentIdx = selectIdx;
          });
        },
        items: widget.children.tabs,
      ),
    );
  }
}
