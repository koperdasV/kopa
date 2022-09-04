import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  const TextFieldWidget({
    Key? key,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.name,
    this.errorText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 50, bottom: 34, top: 10),
      child: TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        cursorColor: Colors.white,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 23),
          // errorText: errorText,
          // errorStyle: const TextStyle(fontSize: 9),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}