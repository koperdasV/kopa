import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final Widget? child;
  final VoidCallback onPressed;
  final TextEditingController? phoneNumberController;

  const ButtonWidget({
    Key? key,
    this.child,
    required this.onPressed,
    this.phoneNumberController,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  final GlobalKey<FormState> _phoneNumberFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: _phoneNumberFormKey,
      padding: const EdgeInsets.only(bottom: 20, left: 50, right: 50),
      child: SizedBox(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromRGBO(12, 205, 230, 1)),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
