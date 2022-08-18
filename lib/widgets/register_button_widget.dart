import 'package:flutter/material.dart';

class RegisterButtonWidget extends StatelessWidget {
  final String imagePath;
  final Color color;
  final VoidCallback onTap;
  const RegisterButtonWidget({
    Key? key,
    required this.imagePath,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: color,
        shape: const CircleBorder(),
        fixedSize: const Size.fromHeight(65),
      ),
      onPressed: onTap,
      child: Image.asset(imagePath),
    );
  }
}