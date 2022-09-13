import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key, this.keyboardType,
  }) : super(key: key);

  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: TextFormField(
        keyboardType: keyboardType,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
