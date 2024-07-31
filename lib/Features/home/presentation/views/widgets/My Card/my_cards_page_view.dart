import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/My%20Card/custom_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.control});

  final PageController control;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: control,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 8, left: 8),
          child: CustomCard(),
        );
      },
    );
  }
}
