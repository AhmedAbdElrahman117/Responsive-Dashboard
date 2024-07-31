import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/asset_images.dart';
import 'package:responsive_dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Drawer/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      image: AssetImages.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: AssetImages.imagesMytransfers,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: AssetImages.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: AssetImages.imagesWallet,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: AssetImages.imagesInvestments,
      title: 'My Investments',
    ),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (index != currentIndex) {
              setState(() {
                currentIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              model: items[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      },
    );
  }
}
