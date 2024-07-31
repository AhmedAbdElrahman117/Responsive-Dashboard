import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';
import 'package:responsive_dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/All%20Expenses/all_expenses_item_header.dart';

class AllExpensesUnselectedItem extends StatelessWidget {
  const AllExpensesUnselectedItem({super.key, required this.data});

  final DrawerItemModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: data.image,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            data.title,
            style: FontStyles.semiBold16(context),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'April 2022',
            style: FontStyles.regular14(context),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '\$20,129',
            style: FontStyles.semiBold24(context),
          ),
        ],
      ),
    );
  }
}
