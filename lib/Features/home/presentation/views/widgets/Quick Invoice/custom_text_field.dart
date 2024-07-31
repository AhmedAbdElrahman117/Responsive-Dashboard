import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, required this.hint});

  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: FontStyles.medium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          style: FontStyles.regular16(context),
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: hint,
            hintStyle: FontStyles.regular16(context).copyWith(
              color: const Color(0xFFAAAAAA),
            ),
            border: borderBuilder(),
            enabledBorder: borderBuilder(),
            focusedBorder: borderBuilder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder borderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
