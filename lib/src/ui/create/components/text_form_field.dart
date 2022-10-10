import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    this.keyboardType,
    this.controller,
    this.onSaved,
    required this.focusNode,
  }) : super(key: key);

  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: TextFormField(
        focusNode: focusNode,
        onSaved: (newValue) {},
        controller: controller,
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
