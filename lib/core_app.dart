import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/resources/styles.dart';

import 'core/bloc/auth_bloc/auth_bloc.dart';
import 'core/data/auth_repository.dart';

import 'router/app_router.dart';
import 'screens.dart';

class CoreApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const CoreApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: RepositoryProvider.of<AuthRepository>(context),
            ),
          ),
          // BlocProvider(
          //   create: (context) => NavigationBloc(),
          // ),
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
          routes: mainNavigation.routes,
          initialRoute: '/',
        ),
      ),
    );
  }
}
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Firebase Phone Auth Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: RepositoryProvider(
  //       create: (context) => PhoneAuthRepository(),
  //       child: BlocProvider(
  //         create: (context) => PhoneAuthBloc(
  //           phoneAuthRepository:
  //               RepositoryProvider.of<PhoneAuthRepository>(context),
  //         ),
  //         child: const LoginScreen(),
  //       ),
  //     ),
  //   );
  // }