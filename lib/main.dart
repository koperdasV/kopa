import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/data/google_sign_in.dart';
import 'package:kopa/src/ui/login/login_screen.dart';
import 'package:kopa/src/ui/main/main_screen_widget.dart';

import 'core/bloc/google_auth_bloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => GoogleAuthRepository(),
      child: BlocProvider(
        create: (context) => AuthBloc(
          authRepository: RepositoryProvider.of<GoogleAuthRepository>(context),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              // If the snapshot has user data, then they're already signed in. So Navigating to the MainScreenWidget
              if (snapshot.hasData) {
                return MainScreenWidget();
              }
              // Otherwise, they're not signed in. Show the sign in page.
              return const LoginScreen();
            },
          ),
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
 

