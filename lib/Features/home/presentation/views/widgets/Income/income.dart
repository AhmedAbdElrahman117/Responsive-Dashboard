import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Income/income_chart.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Income/income_details.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Income/income_header.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/custom_container.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
