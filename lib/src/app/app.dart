import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/src/config/navigation.dart';
import 'package:restaurant/src/config/route_generator.dart';
import 'package:restaurant/src/config/theme/themes.dart';
import 'package:restaurant/src/cubits/navigation_cubit.dart';
import 'package:restaurant/src/cubits/setting_cubit.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/features/detail/view/detail_page.dart';
import 'package:restaurant/src/features/favorite/bloc/favorite_bloc.dart';
import 'package:restaurant/src/features/splash/view/splash_page.dart';
import 'package:restaurant/src/utils/notification_helper.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final NotificationHelper _notificationHelper = NotificationHelper();
  @override
  void initState() {
    super.initState();
    _notificationHelper.configureSelectNotificationSubject('/detail');
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider(
          create: (context) => SettingCubit()..initValue(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restaurant v3',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: UXTheme.dark(),
        navigatorKey: navigatorKey,
        initialRoute: '/splash',
        // onGenerateRoute: RouteGenerator.generateRoute,
        routes: {
          "/splash": (context) => const SplashPage(),
          "/detail": (context) => DetailPage(
              restaurant:
                  ModalRoute.of(context)?.settings.arguments as RestaurantMod),
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    selectNotificationSubject.close();
  }
}
