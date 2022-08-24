import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_bloc.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_event.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_state.dart';
import 'package:kopa/src/ui/login/login_screen.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const LoginScreen()),
            (route) => false,
          );
        }
      },
      child: SizedBox(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              context.read<AuthBloc>().add(SignOutRequested());
            },
            child: const Text('Exit'),
          ),
        ),
      ),
    ));
  }
}
