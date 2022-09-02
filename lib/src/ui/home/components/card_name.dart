import 'package:flutter/material.dart';

class CardName extends StatelessWidget {
  const CardName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Nike 992K',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}