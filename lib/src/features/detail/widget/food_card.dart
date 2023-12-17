import 'package:flutter/material.dart';
import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/config/theme/colors.dart';
import 'package:restaurant/src/data/models/restaurant_detail/restaurant_detail_mod.dart';

class FoodCard extends StatelessWidget {
  final List<Food> data;
  const FoodCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 4),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        mainAxisExtent: 60,
      ),
      children: data
          .map(
            (e) => Container(
              decoration: BoxDecoration(
                color: UIColors.grey_40,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(
                e.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    fontWeight: FontWeight.w500,
                    color: UIColors.text),
              ),
            ),
          )
          .toList(),
    );
  }
}
