import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_bloc.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_state.dart';
import 'package:kopa/src/ui/ads/ads_screen.dart';
import 'package:kopa/src/ui/favorite/favorite_screen.dart';
import 'package:kopa/src/ui/home/home_screen.dart';
import 'package:kopa/src/ui/login/login_screen.dart';
import 'package:kopa/src/ui/profile/profile_screen.dart';

import '../../../widgets/bottom_navbar_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
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
