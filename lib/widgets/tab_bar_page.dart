import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/ui/ads/active_screen.dart';
import 'package:kopa/src/ui/ads/archiv_screen.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 70),
          TabBarWidget(size: size, tabController: tabController),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                ActiveScreen(),
                ArchivScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
              color: AppColor.selectedItemColor,
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
