import 'package:flutter/material.dart';

class LengthShoesWidget extends StatelessWidget {
  const LengthShoesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: const [
          Text(
            '28.5',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Довжина / см',
          ),
        ],
      ),
    );
  }
}
