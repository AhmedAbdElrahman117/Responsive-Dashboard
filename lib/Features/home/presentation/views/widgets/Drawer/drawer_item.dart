import 'package:flutter/material.dart';

import 'package:responsive_dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Drawer/active_drawer_item.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Drawer/in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model, required this.isActive});

  final DrawerItemModel model;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveDrawerItem(model: model),
      secondChild: InActiveWDrawerItem(model: model),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 200),
    );
  }
}
