import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/asset_images.dart';
import 'package:responsive_dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/All%20Expenses/all_expenses_item.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({super.key});

  static const List<DrawerItemModel> data = [
    DrawerItemModel(
      title: 'Balance',
      image: AssetImages.imagesBalance,
    ),
    DrawerItemModel(
      title: 'Income',
      image: AssetImages.imagesIncome,
    ),
    DrawerItemModel(
      title: 'Expenses',
      image: AssetImages.imagesExpenses,
    ),
  ];

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItems.data.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                selectedIndex = index;
                setState(() {});
              },
              child: AllExpensesItem(
                data: item,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
