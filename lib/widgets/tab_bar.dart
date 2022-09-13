import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    required this.size,
    required this.tabController,
  }) : super(key: key);

  final Size size;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 1.25,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(75, 75, 75, 1),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            indicatorWeight: 2,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColor.kPrimaryColor,
            ),
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
            controller: tabController,
            tabs: const [
              Tab(
                text: 'Активні',
              ),
              Tab(
                text: 'Архів',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
