import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:restaurant/src/config/navigation.dart';
import 'package:restaurant/src/core/api_result.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/models/restaurant_detail/restaurant_detail_mod.dart';
import 'package:restaurant/src/data/services/restaurant_service.dart';
import 'package:restaurant/src/features/detail/view/detail_page.dart';
import 'package:restaurant/src/utils/logger.dart';
import 'package:rxdart/subjects.dart';

final selectNotificationSubject = BehaviorSubject<String>();

class NotificationHelper {
  static NotificationHelper? _instance;

  NotificationHelper._internal() {
    _instance = this;
  }

  factory NotificationHelper() => _instance ?? NotificationHelper._internal();

  @pragma('vm:entry-point')
  Future<void> initNotifications(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .requestNotificationsPermission();

    var initializationSettingsAndroid =
        const AndroidInitializationSettings('app_icon');

    var initializationSettingsIOS = const DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        final payload = details.payload;
        if (payload != null) {
          debugPrint('notification payload: $payload');
        }
        selectNotificationSubject.add(payload ?? 'empty payload');
      },
    );
  }

  Future<void> showNotification(
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin,
    List<RestaurantMod> restaurants,
  ) async {
    var channelId = "1";
    var channelName = "channel_01";
    var channelDescription = "restaurant channel";

    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      channelId,
      channelName,
      channelDescription: channelDescription,
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
      styleInformation: const DefaultStyleInformation(true, true),
    );

    var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    var titleNotification = "<b>Restaurant Recommendation</b>";

    final Random random = Random();
    final int randomIndex = random.nextInt(restaurants.length);
    final RestaurantMod randomRestaurant = restaurants[randomIndex];

    var titleNews = randomRestaurant.name;

    await flutterLocalNotificationsPlugin.show(
      0,
      titleNotification,
      titleNews,
      platformChannelSpecifics,
      payload: json.encode(randomRestaurant.toJson()),
    );
  }

  void configureSelectNotificationSubject(String route) async {
    selectNotificationSubject.stream.listen((payload) {
      if (payload.isNotEmpty) {
        final decodedPayload = jsonDecode(payload);
        final restaurantMod = RestaurantMod.fromJson(decodedPayload);
        Navigation.intentWithData(route, restaurantMod);
      }
    });
  }
}
