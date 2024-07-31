import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Quick%20Invoice/form_item.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Quick%20Invoice/quick_invoice_buttons.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FormItem(
          title1: 'Customer Name',
          hint1: 'Type Customer Name',
          title2: 'Customer Email',
          hint2: 'Type Customer Email',
        ),
        SizedBox(
          height: 30,
        ),
        FormItem(
          title1: 'Item Name',
          hint1: 'Type Item Name',
          title2: 'Item Mount',
          hint2: 'USD',
        ),
        SizedBox(
          height: 24,
        ),
        QuickInvoiceButtons(),
      ],
    );
  }
}
