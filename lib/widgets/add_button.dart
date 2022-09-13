import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final Function() onPressed;
  final Color? backgroundColor;
  final Widget child;
  final ButtonStyle? style;

  const AddButton({
    Key? key,
    required this.onPressed,
    this.backgroundColor,
    required this.child,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double math = 91.1;
    return Transform.rotate(
      angle: -math / 4,
      child: SizedBox(
        height: 65,
        width: 65,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22))),
          ),
          onPressed: onPressed,
          child: Transform.rotate(
            angle: -math / 4,
            child: child,
          ),
        ),
      ),
    );
  }
}

// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = _getStarPath();
//     return path;
//   }

//   @override
//   bool shouldReclip(oldClipper) => false;
// }