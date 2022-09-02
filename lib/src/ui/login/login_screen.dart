import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_bloc.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_event.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_state.dart';
import 'package:kopa/src/ui/main/main_screen_widget.dart';

import '../../../widgets/register_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: ((context) => MainScreenWidget())));
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
              child: Container(
                color: AppColor.kPrimaryColor,
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
                              onTap: () {
                                // Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: ((context) =>
                                //             PhoneAuth())));
                              },
                              color: const Color(0xFF42FF00),
                            ),
                            RegisterButtonWidget(
                              imagePath: 'images/facebook.png',
                              onTap: () {},
                              color: const Color(0xFF44429B),
                            ),
                            RegisterButtonWidget(
                              imagePath: 'images/google.png',
                              onTap: () async {
                                _authenticateWithGoogle(context);
                              },
                              color: const Color(0xFFFF0000),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _authenticateWithGoogle(context) {
    BlocProvider.of<AuthBloc>(context).add(GoogleSignInRequested());
  }
}
