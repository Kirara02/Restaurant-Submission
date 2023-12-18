import 'package:flutter/material.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/features/detail/view/detail_page.dart';
import 'package:restaurant/src/features/splash/view/splash_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    const String homeRoute = '/home';
    const String splash = '/splash';
    const String detail = '/detail';
    late final multiArgs = settings.arguments as List<dynamic>;

    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());

      case detail:
        return MaterialPageRoute(
            builder: (context) => DetailPage(
                  restaurant: ModalRoute.of(context)?.settings.arguments
                      as RestaurantMod,
                ));

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(title: const Text('ERROR'), centerTitle: true),
        body: const Center(
          child: Text('Page not Found'),
        ),
      );
    });
  }
}

// class MultiArgs {
//   final String parentId;
//   final String episodeId;
//   MultiArgs({required this.parentId, required this.episodeId});
// }
