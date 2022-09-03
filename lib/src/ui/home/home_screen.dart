import 'package:flutter/material.dart';

import 'components/list_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.filter_alt),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            ListCardWidget(),
          ],
        ),
      ),
    );
  }
}
