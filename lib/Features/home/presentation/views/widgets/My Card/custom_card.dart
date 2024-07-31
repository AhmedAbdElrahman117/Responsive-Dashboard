import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/asset_images.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 420 / 240,
          child: Container(
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  AssetImages.imagescardbackground,
                ),
              ),
              color: const Color(0xFF4EB7F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.only(right: 30, left: 20, top: 12),
                    title: Text(
                      'Card Name',
                      style: FontStyles.regular16(context)
                          .copyWith(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Syah Bandi',
                      style: FontStyles.medium20(context),
                    ),
                    trailing: SvgPicture.asset(AssetImages.imagesimage),
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '0918 8124 0042 8129',
                        style: FontStyles.semiBold24(context)
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '12/20 - 124',
                        style: FontStyles.regular16(context)
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
