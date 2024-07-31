import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.iconColor, this.arrowColor});

  final String image;
  final ColorFilter? iconColor;
  final Color? arrowColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              image,
              colorFilter: iconColor ??
                  const ColorFilter.mode(
                    Color(0xFF4EB7F2),
                    BlendMode.srcIn,
                  ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(
            width: 40,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: arrowColor ?? Colors.black,
        ),
      ],
    );
  }
}
