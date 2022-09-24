import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/product/product_bloc.dart';
import 'package:kopa/core/repositories/product/product_repositories.dart';
import 'package:kopa/resources/styles.dart';
import 'package:kopa/router/app_router.dart';

import 'core/blocs/auth_bloc/auth_bloc.dart';
import 'core/repositories/auth/auth_repository.dart';

import 'screens.dart';

class CoreApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const CoreApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            authRepository: AuthRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => ProductBloc(
            productRepository: ProductRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: buildThemeData(),
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            // If the snapshot has user data, then they're already signed in. So Navigating to the MainScreenWidget
            if (snapshot.hasData) {
              return const MainScreenWidget();
            }
            // Otherwise, they're not signed in. Show the sign in page.
            return const LoginScreen();
          },
        ),
        initialRoute: '/',
        routes: mainNavigation.routes,
      ),
    );
  }
}
