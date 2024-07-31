import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Income/income.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/My%20Card/my_cards.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Transaction%20History/transaction_history.dart';

class SideSection extends StatelessWidget {
  const SideSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 12,
        ),
        MyCards(),
        Divider(
          height: 40,
          color: Color(0xFFF1F1F1),
        ),
        TransactionHistory(),
        SizedBox(
          height: 24,
        ),
        Income(),
      ],
    );
  }
}
