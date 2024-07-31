import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/All%20Expenses/all_expenses_header.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/All%20Expenses/all_expenses_items.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: 20,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: AllExpensesHeader(),
          ),
          SizedBox(
            height: 16,
          ),
          AllExpensesItems(),
        ],
      ),
    );
  }
}
