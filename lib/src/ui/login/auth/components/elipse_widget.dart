import 'package:flutter/material.dart';

class EllipseWidget extends StatelessWidget {
  const EllipseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: SizedBox(
        child: Stack(
          children: [
            Image.asset('images/ellipse.png'),
            const Positioned(
              left: 76,
              top: 36,
              child: Text(
                'Вхід',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}