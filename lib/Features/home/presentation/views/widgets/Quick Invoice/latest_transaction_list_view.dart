import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/asset_images.dart';
import 'package:responsive_dashboard/Features/home/data/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/Features/home/presentation/views/widgets/Quick%20Invoice/latest_transaction_item.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<LatestTransactionModel> info = [
    LatestTransactionModel(
      email: 'Mardaniandi@gmail.com',
      image: AssetImages.imagesSmileface,
      name: 'Mardani Andi',
    ),
    LatestTransactionModel(
      email: 'Josuanunito@gmail.com',
      image: AssetImages.imagesSmilefacedark,
      name: 'Josua Nunito',
    ),
    LatestTransactionModel(
      email: 'Mardaniandi@gmail.com',
      image: AssetImages.imagesSmileface,
      name: 'Mardani Andi',
    ),
    LatestTransactionModel(
      email: 'Josuanunito@gmail.com',
      image: AssetImages.imagesSmilefacedark,
      name: 'Josua Nunito',
    ),
    LatestTransactionModel(
      email: 'Mardaniandi@gmail.com',
      image: AssetImages.imagesSmileface,
      name: 'Mardani Andi',
    ),
    LatestTransactionModel(
      email: 'Josuanunito@gmail.com',
      image: AssetImages.imagesSmilefacedark,
      name: 'Josua Nunito',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: info
            .map(
              (e) => IntrinsicWidth(
                child: LatestTransactionItem(info: e),
              ),
            )
            .toList(),
      ),
    );
  }
}
