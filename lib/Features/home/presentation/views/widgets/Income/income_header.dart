import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/asset_images.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: FontStyles.semiBold20(context),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Row(
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
          ),
        )
      ],
    );
  }
}
