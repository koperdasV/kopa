import 'package:flutter/material.dart';
import 'package:kopa/resources/styles.dart';

class TextFieldWidget extends StatelessWidget {
  final String lableText;
  final TextInputType? keyboardType;

  const TextFieldWidget({
    Key? key,
    required this.lableText,
    this.keyboardType = TextInputType.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
      child: TextField(
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        keyboardType: keyboardType,
        cursorColor: Colors.white,
        decoration: buildDecoration(lableText),
      ),
    );
  }
}
