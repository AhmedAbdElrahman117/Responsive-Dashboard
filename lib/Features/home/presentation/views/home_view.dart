import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/Layouts/desktop_layout.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/Layouts/adaptive_layout.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/Layouts/mobile_layout.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/Layouts/tablet_layout.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/custom_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F9FA),
      appBar: MediaQuery.of(context).size.width <= 767
          ? AppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              elevation: 0,
            )
          : null,
      drawer: MediaQuery.of(context).size.width <= 767
          ? const Drawer(
              backgroundColor: Colors.white,
              child: CustomDrawer(),
            )
          : null,
      body: AdaptiveLayout(
        mobile: (context) => const MobileLayout(),
        tablet: (context) => const TabletLayout(),
        desktop: (context) => const DesktopLayout(),
      ),
    );
  }
}
