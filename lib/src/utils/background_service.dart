import 'dart:developer';
import 'dart:ui';
import 'dart:isolate';
import 'package:flutter/cupertino.dart';
import 'package:restaurant/bootstrap.dart';
import 'package:restaurant/src/core/api_result.dart';
import 'package:restaurant/src/data/models/restaurant/restaurant_mod.dart';
import 'package:restaurant/src/data/services/repository_service.dart';
import 'package:restaurant/src/utils/notification_helper.dart';

final ReceivePort port = ReceivePort();

class BackgroundService {
  static BackgroundService? _instance;
  static const String _isolateName = 'isolate';
  static SendPort? _uiSendPort;

  BackgroundService._internal() {
    _instance = this;
  }

  factory BackgroundService() => _instance ?? BackgroundService._internal();

  void initializeIsolate() {
    IsolateNameServer.registerPortWithName(
      port.sendPort,
      _isolateName,
    );
  }

  @pragma('vm:entry-point')
  static Future<void> callback() async {
    debugPrint('Alarm fired!');
    final NotificationHelper notificationHelper = NotificationHelper();

    ApiResult<List<RestaurantMod>> result =
        await RestaurantService().getRestaurants();

    result.when(
      success: (data) async {
        await notificationHelper.showNotification(
            flutterLocalNotificationsPlugin, data);
      },
      failure: (error) {
        log(error.toString());
      },
    );

    _uiSendPort ??= IsolateNameServer.lookupPortByName(_isolateName);
    _uiSendPort?.send(null);
  }
}
