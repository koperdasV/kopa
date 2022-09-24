import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key, required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Text(
          'Зберегти',
          style: TextStyle(
            color: AppColor.kPrimaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
