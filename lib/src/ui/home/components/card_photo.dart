import 'package:flutter/material.dart';

class CardPhoto extends StatelessWidget {
  const CardPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 150,
      child: Image.asset(
        'images/testPhoto.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
