import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

class SizeShoesWidget extends StatelessWidget {
  const SizeShoesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Text(
            '40',
            style: TextStyle(
              color: AppColor.kPrimaryColor,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const Text(
            'EU',
          ),
        ],
      ),
    );
  }
}
