import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/main_menu.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/side_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MainMenu(),
                SideSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
