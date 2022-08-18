import 'package:flutter/material.dart';
import 'package:kopa/constant.dart';

import '../../widgets/register_button_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RegisterButtonWidget(
                        imagePath: 'images/phone.png',
                        onTap: () {},
                        color: const Color(0xFF42FF00),
                      ),
                      RegisterButtonWidget(
                        imagePath: 'images/facebook.png',
                        onTap: () {},
                        color: const Color(0xFF44429B),
                      ),
                      RegisterButtonWidget(
                        imagePath: 'images/google.png',
                        onTap: () {},
                        color: const Color(0xFFFF0000),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
