import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Quick%20Invoice/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: FontStyles.medium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransactionListView(),
      ],
    );
  }
}
