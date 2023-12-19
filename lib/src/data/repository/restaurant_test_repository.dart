import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';

abstract class RestaurantTestRepository {
  Future<List<RestaurantMod>> getRestaurant();
}
