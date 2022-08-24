import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/constant.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_bloc.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_state.dart';
import 'package:kopa/src/ui/ads/ads_screen.dart';
import 'package:kopa/src/ui/favorite/favorite_screen.dart';
import 'package:kopa/src/ui/home/home_screen.dart';
import 'package:kopa/src/ui/login/login_screen.dart';
import 'package:kopa/src/ui/profile/profile_screen.dart';

class MainScreenWidget extends StatelessWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  void _onNavigationItemSelected(index) {
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onItemSelected: _onNavigationItemSelected,
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const LoginScreen()),
              (route) => false,
            );
          }
        },
        child: ValueListenableBuilder(
            valueListenable: pageIndex,
            builder: (context, value, child) {
              return IndexedStack(
                index: pageIndex.value,
                children: [
                  const HomeScreen(),
                  const AdvertisementScreen(),
                  const FavoriteScreen(),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return const ProfileScreen();
                    },
                  ),
                ],
              );
            }),
      ),
    );
  }
}

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
      decoration: BoxDecoration(
          color: AppColor.navBarColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5.0,
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
        height: 74,
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
