import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: FontStyles.semiBold20(context),
        ),
        const Icon(
          FontAwesomeIcons.plus,
          size: 18,
          color: Color(0xFF4EB7F2),
        ),
      ],
    );
  }
}
