import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_detail_mod.freezed.dart';
part 'restaurant_detail_mod.g.dart';

@freezed
class RestaurantDetailMod with _$RestaurantDetailMod {
  const factory RestaurantDetailMod({
    required String id,
    required String name,
    required String description,
    required String city,
    required String address,
    @JsonKey(name: 'pictureId') required String pictureId,
    required List<Category> categories,
    required Menus menus,
    required double rating,
    @JsonKey(name: 'customerReviews')
    required List<CustomerReview> customerReviews,
  }) = _RestaurantDetailMod;

  factory RestaurantDetailMod.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDetailModFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Menus with _$Menus {
  const factory Menus({
    required List<Food> foods,
    required List<Drink> drinks,
  }) = _Menus;

  factory Menus.fromJson(Map<String, dynamic> json) => _$MenusFromJson(json);
}

@freezed
class Food with _$Food {
  const factory Food({
    required String name,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}

@freezed
class Drink with _$Drink {
  const factory Drink({
    required String name,
  }) = _Drink;

  factory Drink.fromJson(Map<String, dynamic> json) => _$DrinkFromJson(json);
}

@freezed
class CustomerReview with _$CustomerReview {
  const factory CustomerReview({
    required String name,
    required String review,
    required String date,
  }) = _CustomerReview;

  factory CustomerReview.fromJson(Map<String, dynamic> json) =>
      _$CustomerReviewFromJson(json);
}
