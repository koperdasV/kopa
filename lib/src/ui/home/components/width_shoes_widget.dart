import 'package:flutter/material.dart';

class WidthShoesWidget extends StatelessWidget {
  const WidthShoesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: const [
          Text(
            '10',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Ширина / см',
          ),
        ],
      ),
    );
  }
}
