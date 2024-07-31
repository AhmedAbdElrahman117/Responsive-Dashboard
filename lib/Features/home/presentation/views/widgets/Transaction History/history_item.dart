import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';
import 'package:responsive_dashboard/Features/home/data/models/transaction_history_model.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
    required this.history,
  });
  final TransactionHistoryModel history;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        history.title,
        style: FontStyles.semiBold16(context),
      ),
      subtitle: Text(
        history.date,
        style: FontStyles.regular16(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
      ),
      trailing: Text(
        '\$${history.amount}',
        style: FontStyles.semiBold20(context).copyWith(
          color: isWithdrawaled(),
        ),
      ),
    );
  }

  Color isWithdrawaled() {
    if (history.isWithdrawaled == null || history.isWithdrawaled == false) {
      return const Color(0xFF7DD97B);
    } else {
      return const Color(0xFFF3735E);
    }
  }
}
