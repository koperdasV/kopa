import 'package:flutter/material.dart';

import '../resources/constant.dart';
import 'add_button.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColor.navBarColor, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1.0,
          blurRadius: 7.0,
          offset: const Offset(0, 0.25),
        )
      ]),
      child: SafeArea(
        top: false,
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavigationBarItem(
              index: 0,
              image: 'images/home.png',
              isSelected: (_selectedTab == 0),
              onTap: onSelectedTab,
            ),
            _NavigationBarItem(
              index: 1,
              image: 'images/advertise.png',
              isSelected: (_selectedTab == 1),
              onTap: onSelectedTab,
            ),
            AddButton(
              onPressed: () {},
              backgroundColor: AppColor.selectedItemColor,
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 32,
              ),
            ),
            _NavigationBarItem(
              index: 2,
              image: 'images/favorite.png',
              isSelected: (_selectedTab == 2),
              onTap: onSelectedTab,
            ),
            _NavigationBarItem(
              index: 3,
              image: 'images/profile.png',
              isSelected: (_selectedTab == 3),
              onTap: onSelectedTab,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.index,
    required this.image,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final ValueChanged<int> onTap;
  final bool isSelected;
  final int index;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage(image),
              color: isSelected
                  ? AppColor.selectedItemColor
                  : AppColor.unSelectedItemColor,
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
