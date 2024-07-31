import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.textColor,
      required this.text});

  final Color backGroundColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          overlayColor: Colors.black,
          surfaceTintColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: backGroundColor,
        ),
        child: Text(
          text,
          style: FontStyles.semiBold16(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
