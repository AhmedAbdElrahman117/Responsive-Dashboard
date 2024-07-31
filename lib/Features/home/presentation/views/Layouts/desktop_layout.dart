import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/main_menu.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/side_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 4,
          child: SingleChildScrollView(
            child: MainMenu(),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: SideSection(),
          ),
        ),
      ],
    );
  }
}
