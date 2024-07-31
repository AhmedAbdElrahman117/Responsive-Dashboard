import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';
import 'package:responsive_dashboard/Features/home/data/models/drawer_item_model.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.model});

  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      horizontalTitleGap: 20,
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          model.title,
          style: FontStyles.bold16(context),
        ),
      ),
      trailing: Container(
        color: const Color(0xFF4EB7F2),
        width: 3.30,
      ),
    );
  }
}
