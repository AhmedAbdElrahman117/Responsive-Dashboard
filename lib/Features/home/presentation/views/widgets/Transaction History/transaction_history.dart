import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Transaction%20History/history_list.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Transaction%20History/transaction_history_header.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/custom_container.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          TransactionHistoryHeader(),
          SizedBox(
            height: 16,
          ),
          HistoryList(),
        ],
      ),
    );
  }
}
