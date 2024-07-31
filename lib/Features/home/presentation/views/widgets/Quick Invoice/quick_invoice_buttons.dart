import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Quick%20Invoice/custom_button.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomButton(
          text: 'Add More Details',
          backGroundColor: Colors.white,
          textColor: Color(0xFF4EB7F2),
        ),
        SizedBox(
          width: 24,
        ),
        CustomButton(
          text: 'Send Money',
          backGroundColor: Color(0xFF4EB7F2),
          textColor: Colors.white,
        ),
      ],
    );
  }
}
