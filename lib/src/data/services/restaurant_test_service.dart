import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/repository/restaurant_test_repository.dart';

class RestaurantTestService implements RestaurantTestRepository {
  @override
  Future<List<RestaurantMod>> getRestaurant() async {
    final response = await http.get(Uri.parse("${AppConstants.BASEURL}list"));

    try {
      if (response.statusCode == 200) {
        final data = json.decode(response.body)['restaurants'] as List;

        return data.map((item) => RestaurantMod.fromJson(item)).toList();
      }
      throw Exception('Failed to load album');
    } catch (e) {
      rethrow;
    }
  }
}
