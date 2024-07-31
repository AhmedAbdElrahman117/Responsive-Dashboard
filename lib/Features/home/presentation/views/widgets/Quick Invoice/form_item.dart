import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Quick%20Invoice/custom_text_field.dart';

class FormItem extends StatelessWidget {
  const FormItem(
      {super.key,
      required this.title1,
      required this.hint1,
      required this.title2,
      required this.hint2});

  final String title1;
  final String hint1;
  final String title2;
  final String hint2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            title: title1,
            hint: hint1,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: CustomTextField(
            title: title2,
            hint: hint2,
          ),
        ),
      ],
    );
  }
}
