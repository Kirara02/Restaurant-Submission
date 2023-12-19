import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/core/api_result.dart';
import 'package:restaurant/src/data/data_source/common/http.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/models/restaurant_detail/restaurant_detail_mod.dart';
import 'package:restaurant/src/data/repository/restaurant_repository.dart';

class RestaurantService implements RestaurantRepository {
  late UXHttp http;

  RestaurantService() {
    // http = UXHttp(xBaseUrl: dotenv.env['BASEURL']);
    http = UXHttp(xBaseUrl: AppConstants.BASEURL);
  }

  @override
  Future<ApiResult<List<CustomerReview>>> addReview({
    required String id,
    required String name,
    required String review,
  }) async {
    return await http.post("review",
        data: {"id": id, "name": name, "review": review},
        onSuccess: (res) => (res.data['customerReviews'] as List)
            .map((e) => CustomerReview.fromJson(e))
            .toList());
  }

  @override
  Future<ApiResult<RestaurantDetailMod>> getDetailRestaurant({
    required String id,
  }) async {
    return await http.get("detail/$id",
        onSuccess: (res) =>
            RestaurantDetailMod.fromJson(res.data['restaurant']));
  }

  @override
  Future<ApiResult<List<RestaurantMod>>> getRestaurants() async {
    return await http.get("list",
        onSuccess: (res) => (res.data['restaurants'] as List)
            .map((e) => RestaurantMod.fromJson(e))
            .toList());
  }

  @override
  Future<ApiResult<List<RestaurantMod>>> searchRestaurants({
    required String key,
  }) async {
    return await http.get("search?q=$key",
        onSuccess: (res) => (res.data['restaurants'] as List)
            .map((e) => RestaurantMod.fromJson(e))
            .toList());
  }


}
