// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_detail_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantDetailMod _$$_RestaurantDetailModFromJson(
        Map<String, dynamic> json) =>
    _$_RestaurantDetailMod(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      city: json['city'] as String,
      address: json['address'] as String,
      pictureId: json['pictureId'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      menus: Menus.fromJson(json['menus'] as Map<String, dynamic>),
      rating: (json['rating'] as num).toDouble(),
      customerReviews: (json['customerReviews'] as List<dynamic>)
          .map((e) => CustomerReview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RestaurantDetailModToJson(
        _$_RestaurantDetailMod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'city': instance.city,
      'address': instance.address,
      'pictureId': instance.pictureId,
      'categories': instance.categories,
      'menus': instance.menus,
      'rating': instance.rating,
      'customerReviews': instance.customerReviews,
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_Menus _$$_MenusFromJson(Map<String, dynamic> json) => _$_Menus(
      foods: (json['foods'] as List<dynamic>)
          .map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      drinks: (json['drinks'] as List<dynamic>)
          .map((e) => Drink.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MenusToJson(_$_Menus instance) => <String, dynamic>{
      'foods': instance.foods,
      'drinks': instance.drinks,
    };

_$_Food _$$_FoodFromJson(Map<String, dynamic> json) => _$_Food(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'name': instance.name,
    };

_$_Drink _$$_DrinkFromJson(Map<String, dynamic> json) => _$_Drink(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_DrinkToJson(_$_Drink instance) => <String, dynamic>{
      'name': instance.name,
    };

_$_CustomerReview _$$_CustomerReviewFromJson(Map<String, dynamic> json) =>
    _$_CustomerReview(
      name: json['name'] as String,
      review: json['review'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_CustomerReviewToJson(_$_CustomerReview instance) =>
    <String, dynamic>{
      'name': instance.name,
      'review': instance.review,
      'date': instance.date,
    };
