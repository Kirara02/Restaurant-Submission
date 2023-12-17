import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:restaurant/src/config/constant.dart';
import 'package:restaurant/src/utils/background_service.dart';
import 'package:restaurant/src/utils/date_format_helper.dart';
import 'package:restaurant/src/utils/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingCubit extends Cubit<bool> {
  SettingCubit() : super(false);

  changeValue(newState) async {
    var pref = await SharedPreferences.getInstance();
    pref.setBool(AppConstants.notification, newState);
    if (newState) {
      log('Scheduling Activated');
      log(newState.toString());

      await AndroidAlarmManager.periodic(
        const Duration(hours: 24),
        1,
        BackgroundService.callback,
        startAt: DateTimeHelper.format(),
        exact: true,
        wakeup: true,
      );
    } else {
      log('Scheduling Canceled');
      log(newState.toString());
      await AndroidAlarmManager.cancel(1);
    }
    emit(newState);
  }

  initValue() async {
    var pref = await SharedPreferences.getInstance();
    bool? notification = pref.getBool(AppConstants.notification);
    emit(notification ?? false);
  }

  @override
  void onChange(Change<bool> change) {
    eLog(change);
    super.onChange(change);
  }
}
