import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/font_style.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/My%20Card/dots_indicator.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/My%20Card/my_cards_page_view.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/custom_container.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  late PageController control;
  int currentPage = 0;
  @override
  void initState() {
    control = PageController();
    control.addListener(
      () {
        currentPage = control.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Card',
            style: FontStyles.semiBold20(context),
          ),
          const SizedBox(
            height: 20,
          ),
          MyCardsPageView(
            control: control,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: DotsIndicator(
              currentIndex: currentPage,
            ),
          ),
        ],
      ),
    );
  }
}
