import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/asset_images.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: FontStyles.semiBold20(context),
        ),
        Row(
          children: [
            Text(
              "Monthly",
              style: FontStyles.medium16(context).copyWith(
                color: const Color(0xFF064061),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            SvgPicture.asset(
              AssetImages.imagesarrowdown,
            ),
          ],
        )
      ],
    );
  }
}
