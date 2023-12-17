import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_mod.freezed.dart';
part 'restaurant_mod.g.dart';

const String restaurantTable = 'restaurants';

@freezed
class RestaurantMod with _$RestaurantMod {
  const factory RestaurantMod({
    required String id,
    required String name,
    required String description,
    @JsonKey(name: 'pictureId') required String pictureId,
    required String city,
    required double rating,
  }) = _RestaurantMod;

  factory RestaurantMod.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModFromJson(json);
}
