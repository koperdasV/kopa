import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/widgets/tab_bar_page.dart';

class AdvertisementScreen extends StatelessWidget {
  const AdvertisementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kPrimaryColor,
      child: const TabBarPage(),
    );
  }
}
