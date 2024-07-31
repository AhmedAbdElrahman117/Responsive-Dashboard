import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/All%20Expenses/all_expenses_selected_item.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/All%20Expenses/all_expenses_unselected_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.data,
    required this.isSelected,
  });

  final DrawerItemModel data;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: AllExpensesSelectedItem(
        data: data,
        arrowColor: Colors.white,
        iconColor: const ColorFilter.mode(
          Colors.white,
          BlendMode.srcIn,
        ),
      ),
      secondChild: AllExpensesUnselectedItem(
        data: data,
      ),
      crossFadeState:
          isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(
        milliseconds: 200,
      ),
    );
  }
}
