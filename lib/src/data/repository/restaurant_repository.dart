import 'package:restaurant/src/core/api_result.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/models/restaurant_detail/restaurant_detail_mod.dart';

abstract class RestaurantRepository {
  Future<ApiResult<List<RestaurantMod>>> getRestaurants();
  Future<ApiResult<List<RestaurantMod>>> searchRestaurants({
    required String key,
  });
  Future<ApiResult<RestaurantDetailMod>> getDetailRestaurant({
    required String id,
  });
  Future<ApiResult<List<CustomerReview>>> addReview({
    required String id,
    required String name,
    required String review,
  });
}
