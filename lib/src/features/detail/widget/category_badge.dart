import 'package:flutter/material.dart';
import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/config/theme/colors.dart';
import 'package:restaurant/src/data/models/restaurant_detail/restaurant_detail_mod.dart';

class CategoryBadge extends StatelessWidget {
  final Category category;
  const CategoryBadge({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: UIColors.grey_80,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        category.name,
        style: const TextStyle(
          fontSize: AppConstants.kFontSizeS,
        ),
      ),
    );
  }
}
