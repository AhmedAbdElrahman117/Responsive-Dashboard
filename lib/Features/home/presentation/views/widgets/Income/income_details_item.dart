import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';
import 'package:responsive_dashboard/Features/home/data/models/chart_details_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Income/custom_dot.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.model});

  final ChartDetailsModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomDot(
        dotColor: model.dotColor,
      ),
      title: Text(
        model.title,
        style: FontStyles.regular16(context),
      ),
      trailing: Text(
        model.percent,
        style: FontStyles.medium16(context).copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
