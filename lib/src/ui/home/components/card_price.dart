import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

class CardPrice extends StatelessWidget {
  const CardPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 75,
        height: 40,
        decoration: BoxDecoration(
          color: AppColor.priceColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            '100 \u0024',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
