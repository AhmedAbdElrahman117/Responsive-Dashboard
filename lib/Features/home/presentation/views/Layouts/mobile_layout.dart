import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/main_menu.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/side_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
