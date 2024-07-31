import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/data/models/transaction_history_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Transaction%20History/history_item.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  static const List<TransactionHistoryModel> history = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: '20,129',
      isWithdrawaled: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page Project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '2,000',
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App Project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: '20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: history
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: HistoryItem(history: e),
            ),
          )
          .toList(),
    );
  }
}
