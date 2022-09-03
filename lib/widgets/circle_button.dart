import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback? onClick;
  final Widget child;

  const CircleButton(
      {Key? key,
      this.onClick,
      this.child = const Icon(
        Icons.close,
        color: Colors.white,
      )})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      fillColor: AppColor.kPrimaryColor,
      constraints: const BoxConstraints(
          minWidth: 48, maxHeight: 48, minHeight: 48, maxWidth: 48),
      onPressed: onClick,
      child: child,
    );
  }
}
