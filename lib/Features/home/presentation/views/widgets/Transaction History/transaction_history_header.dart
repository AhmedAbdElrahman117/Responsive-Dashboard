import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: FontStyles.semiBold20(context),
            ),
            Text(
              'See all',
              style: FontStyles.medium16(context).copyWith(
                color: const Color(0xFF4EB7F2),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: FontStyles.medium16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        )
      ],
    );
  }
}
