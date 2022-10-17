import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  const TextFieldWidget({
    Key? key,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.name,
    this.errorText,
    this.controller,
    this.prefixIcon,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final GlobalKey<FormState> _phoneNumberFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 50, bottom: 34, top: 10),
      child: TextFormField(
        key: _phoneNumberFormKey,
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        textInputAction: TextInputAction.next,
        cursorColor: Colors.white,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 23),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.grey,
            fontSize: 14,
          ),
          prefix: widget.prefixIcon,
        ),
      ),
    );
  }
}
