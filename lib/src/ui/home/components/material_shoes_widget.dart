import 'package:flutter/material.dart';

class MaterialShoesWidget extends StatelessWidget {
  const MaterialShoesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 66, top: 16),
      child: Text(
        'Матеріал: Шкіра',
        style: TextStyle(
          color: Color.fromRGBO(154, 154, 154, 1),
        ),
      ),
    );
  }
}