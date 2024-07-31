import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';
import 'package:responsive_dashboard/Features/home/data/models/latest_transaction_model.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({
    super.key,
    required this.info,
  });

  final LatestTransactionModel info;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(info.image),
          title: Text(
            info.name,
            style: FontStyles.medium16(context),
          ),
          subtitle: Text(
            info.email,
            style: FontStyles.regular12(context),
          ),
        ),
      ),
    );
  }
}
