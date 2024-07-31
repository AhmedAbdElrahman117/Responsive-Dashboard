import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/My%20Card/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(
            right: 6,
          ),
          child: CustomDotIndicator(
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
