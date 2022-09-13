import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: Divider(
          thickness: 2,
          height: 5,
          color: AppColor.dividerColor,
        ),
      ),
    );
  }
}
