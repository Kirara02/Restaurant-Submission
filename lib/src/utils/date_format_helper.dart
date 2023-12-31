import 'dart:developer';

import 'package:intl/intl.dart';

class DateTimeHelper {
  static DateTime format() {
    // Date and Time Format
    final now = DateTime.now();
    final dateFormat = DateFormat('y/M/d');
    const timeSpecific = "11:00:00";
    final completeFormat = DateFormat('y/M/d H:m:s');

    // Today Format
    final todayDate = dateFormat.format(now);
    final todayDateAndTime = "$todayDate $timeSpecific";
    var resultToday = completeFormat.parseStrict(todayDateAndTime);

    // Jika sudah lewat jam 11 pagi hari ini, atur untuk besok
    if (now.isAfter(resultToday)) {
      var formatted = resultToday.add(const Duration(days: 1));
      final tomorrowDate = dateFormat.format(formatted);
      final tomorrowDateAndTime = "$tomorrowDate $timeSpecific";
      resultToday = completeFormat.parseStrict(tomorrowDateAndTime);
    }
    log(resultToday.toString());
    return resultToday;
  }
}
