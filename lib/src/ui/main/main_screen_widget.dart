// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_state.dart';
import 'package:kopa/core/blocs/favorite/favorite_bloc.dart';
import 'package:kopa/core/blocs/product/product_bloc.dart';
import 'package:kopa/core/repositories/favorite/favorite_repository.dart';
import 'package:kopa/core/repositories/product/product_repositories.dart';
import 'package:kopa/screens.dart';
import 'package:kopa/widgets/bottom_navbar.dart';

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
                MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => ProductBloc(
                        productRepository: ProductRepository(),
                      )..add(LoadProducts()),
                    ),
                    BlocProvider(
                      create: (context) => FavoriteBloc(
                        favoriteRepository: FavoriteRepository(),
                      )..add(const LoadFavorite()),
                    ),
                  ],
                  child: const HomeScreen(),
                ),
                MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => ProductBloc(
                        productRepository: ProductRepository(),
                      )..add(LoadUserProducts()),
                    ),
                    BlocProvider(
                      create: (context) => FavoriteBloc(
                        favoriteRepository: FavoriteRepository(),
                      )..add(const LoadFavorite()),
                    ),
                  ],
                  child: const AdvertisementScreen(),
                ),
                BlocProvider(
                  create: (context) => FavoriteBloc(
                    favoriteRepository: FavoriteRepository(),
                  )..add(const LoadFavorite()),
                  child: const FavoriteScreen(),
                ),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return ProfileScreen();
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
