import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/asset_images.dart';
import 'package:responsive_dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Drawer/drawer_item_list_view.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Drawer/drawer_utils.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Drawer/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: DrawerUtils(),
          ),
        ],
      ),
    );
  }
}
