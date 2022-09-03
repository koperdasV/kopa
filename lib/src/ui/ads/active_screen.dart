import 'package:flutter/material.dart';
import 'package:kopa/src/ui/home/components/list_card_widget.dart';

class ActiveScreen extends StatelessWidget {
  const ActiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    return Column(
      children: const [
        ListCardWidget(),
      ],
    );
  }
}
