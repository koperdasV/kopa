import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.only(top: 104),
        child: Image.asset('images/logo.png'),
      ),
    );
  }
}