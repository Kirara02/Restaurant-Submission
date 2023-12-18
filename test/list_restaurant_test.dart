import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/services/repository_service.dart';

void main() {
  test("Fetching data from API should return a list of restaurants", () async {
    final result = await RestaurantService().getRestaurants();
    result.when(
      success: (data) {
        expect(data, isA<List<RestaurantMod>>());
        expect(data.isNotEmpty, equals(true));
      },
      failure: (error) {
        log(error.toString());
      },
    );
  });
}
