import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Quick%20Invoice/latest_transaction.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Quick%20Invoice/quick_invoice_form.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Quick%20Invoice/quick_invoice_header.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/custom_container.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 16,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xFFFAFAFA),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
