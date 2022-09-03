import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

import 'components/list_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.filter_alt),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Container(
          color: AppColor.kPrimaryColor,
          child: Column(
            children: const [
              ListCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}


