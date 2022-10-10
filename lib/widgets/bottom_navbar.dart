import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/ui/create/create_screen.dart';

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
  final FocusNode _imageFocusNode = FocusNode();
  final FocusNode _widthFocusNode = FocusNode();
  final FocusNode _heigthFocusNode = FocusNode();
  final FocusNode _sizeFocusNode = FocusNode();
  final FocusNode _materialFocusNode = FocusNode();
  final FocusNode _modelFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();
  final FocusNode _priceFocusNode = FocusNode();

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
      color: AppColor.navBarColor,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => CreateScreen(
                          imageFocusNode: _imageFocusNode,
                          widthFocusNode: _widthFocusNode,
                          heigthFocusNode: _heigthFocusNode,
                          sizeFocusNode: _sizeFocusNode,
                          materialFocusNode: _materialFocusNode,
                          modelFocusNode: _modelFocusNode,
                          descriptionFocusNode: _descriptionFocusNode,
                          priceFocusNode: _priceFocusNode,
                        )),
                  ),
                );
              },
              backgroundColor: AppColor.kPrimaryColor,
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
      child: Container(
        width: 50,
        decoration: isSelected
            ? BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 2,
                    color: AppColor.kPrimaryColor,
                  ),
                ),
              )
            : const BoxDecoration(),
        child: SizedBox(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(image),
                color: isSelected
                    ? AppColor.kPrimaryColor
                    : AppColor.unSelectedItemColor,
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
