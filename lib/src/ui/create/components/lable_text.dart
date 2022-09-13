import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

class LableText extends StatelessWidget {
  const LableText({
    Key? key,
    required this.lableText,
  }) : super(key: key);

  final String lableText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 10, top: 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 4.5,
            backgroundColor: AppColor.kPrimaryColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              lableText,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
