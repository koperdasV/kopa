import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_event.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_state.dart';
import 'package:kopa/src/ui/login/auth/phone_auth_screen.dart';
import 'package:kopa/src/ui/main/main_screen_widget.dart';
import 'package:kopa/widgets/register_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: ((context) => const MainScreenWidget())));
                              //BlocProvider.of<AuthBloc>(context).add(SendUserDataToDB());

          }

          if (state is AuthError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 104),
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  Stack(
                    children: [
                      Image.asset('images/ellipse.png'),
                      const Positioned(
                        left: 76,
                        top: 36,
                        child: Text(
                          'Вхід',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RegisterButtonWidget(
                            imagePath: 'images/phone.png',
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const PhoneAuth())));
                            },
                            color: const Color(0xFF42FF00),
                          ),
                          RegisterButtonWidget(
                            imagePath: 'images/facebook.png',
                            onPressed: () {},
                            color: const Color(0xFF44429B),
                          ),
                          RegisterButtonWidget(
                            imagePath: 'images/google.png',
                            onPressed: () {
                              BlocProvider.of<AuthBloc>(context)
                                  .add(GoogleSignInRequested());
                            },
                            color: const Color(0xFFFF0000),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
