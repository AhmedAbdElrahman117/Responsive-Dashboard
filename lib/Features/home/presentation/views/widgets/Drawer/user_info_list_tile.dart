import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/asset_images.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          AssetImages.imagesSmilefaceprofile,
        ),
        title: Text(
          'Lekan Okeowo',
          style: FontStyles.bold16(context).copyWith(
            color: const Color(0xFF064061),
          ),
        ),
        subtitle: Text(
          'demo@gmail.com',
          style: FontStyles.regular12(context),
        ),
      ),
    );
  }
}
