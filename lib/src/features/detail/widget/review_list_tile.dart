import 'package:flutter/material.dart';
import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/config/theme/colors.dart';
import 'package:restaurant/src/data/models/restaurant_detail/restaurant_detail_mod.dart';

class ReviewListTile extends StatelessWidget {
  final CustomerReview data;
  const ReviewListTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: UIColors.grey_80),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                data.name,
                style: const TextStyle(
                  color: UIColors.grey_60,
                  fontSize: AppConstants.kFontSizeXS,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                data.date,
                style: const TextStyle(
                  color: UIColors.grey_60,
                  fontSize: 9,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            data.review,
            style: const TextStyle(
              fontSize: AppConstants.kFontSizeXS,
            ),
          )
        ],
      ),
    );
  }
}
