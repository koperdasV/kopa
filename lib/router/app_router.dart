import 'package:flutter/material.dart';

import '../screens.dart';

abstract class MainNavigationRouteName {
  static const home = '/home';
  static const ads = '/ads';
  static const profile = '/profile';
  static const favorite = '/favorite';
  static const details = '/details';
}

class MainNavigation {
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteName.home: (context) => const HomeScreen(),
    MainNavigationRouteName.ads: (context) => const AdvertisementScreen(),
    MainNavigationRouteName.profile: (context) => ProfileScreen(),
    MainNavigationRouteName.favorite: (context) => const FavoriteScreen(),
    MainNavigationRouteName.details: (context) => const DetailsScreen(),
  };
}