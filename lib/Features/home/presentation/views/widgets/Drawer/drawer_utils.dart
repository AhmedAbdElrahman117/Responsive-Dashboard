import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/asset_images.dart';
import 'package:responsive_dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Drawer/in_active_drawer_item.dart';

class DrawerUtils extends StatelessWidget {
  const DrawerUtils({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: SizedBox(
            height: 20,
          ),
        ),
        InActiveWDrawerItem(
          model: DrawerItemModel(
            image: AssetImages.imagesSettings,
            title: 'System Settings',
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InActiveWDrawerItem(
          model: DrawerItemModel(
            image: AssetImages.imagesLogout,
            title: 'Logout',
          ),
        ),
        SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
