import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/data/models/chart_details_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Income/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<ChartDetailsModel> details = [
    ChartDetailsModel(
      title: 'Design service',
      dotColor: Color(0xFF208CC8),
      percent: '40%',
    ),
    ChartDetailsModel(
      title: 'Design product',
      dotColor: Color(0xFF4EB7F2),
      percent: '25%',
    ),
    ChartDetailsModel(
      title: 'Product royalti',
      dotColor: Color(0xFF064061),
      percent: '20%',
    ),
    ChartDetailsModel(
      title: 'Other',
      dotColor: Color(0xFFE2DECD),
      percent: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: details
          .map(
            (e) => IncomeDetailsItem(model: e),
          )
          .toList(),
    );
  }
}
