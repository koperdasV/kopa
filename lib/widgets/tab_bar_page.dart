import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/ui/ads/active_screen.dart';
import 'package:kopa/src/ui/ads/archiv_screen.dart';

import 'tab_bar_widget.dart';

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


