import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/config/screen.dart';
import 'package:restaurant/src/config/theme/colors.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/features/detail/view/detail_page.dart';

class RestaurantCard extends StatefulWidget {
  final RestaurantMod restaurant;
  const RestaurantCard({super.key, required this.restaurant});

  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailPage(restaurant: widget.restaurant),
      )),
      child: Container(
        width: AppScreens.width,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            image: CachedNetworkImageProvider(
                "https://restaurant-api.dicoding.dev/images/large/${widget.restaurant.pictureId}"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              widget.restaurant.name,
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeXL,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                const Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.yellow,
                  size: 14,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  widget.restaurant.rating.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                const Icon(
                  CupertinoIcons.location_solid,
                  size: 14,
                  color: UIColors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  widget.restaurant.city,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
