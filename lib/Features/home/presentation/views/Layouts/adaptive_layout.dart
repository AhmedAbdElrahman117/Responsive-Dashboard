import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  final WidgetBuilder mobile;
  final WidgetBuilder tablet;
  final WidgetBuilder desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= SizeConfig.mobile) {
          return mobile(context);
        } else if (constraints.minWidth > SizeConfig.mobile ||
            constraints.maxWidth <= SizeConfig.desktop) {
          return tablet(context);
        } else {
          return desktop(context);
        }
      },
    );
  }
}
