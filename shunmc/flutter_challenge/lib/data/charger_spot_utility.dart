import 'package:openapi/openapi.dart';

class ChargerSpotUtility {
  ChargerSpotUtility._();

  static int getAvailableSpotCount(Iterable<ChargerDevice> devices) => devices
      .where((e) => e.displayStatus == ChargerDeviceDisplayStatusEnum.available)
      .length;

  static String getPower(Iterable<ChargerDevice> devices) =>
      devices.map((e) => e.power).toSet().map((e) => '${e}kW').join(('、'));

  static String getOffDay(
      Iterable<ChargerSpotServiceTime> chargerSpotServiceTimes) {
    final businessDays = chargerSpotServiceTimes
        .where((e) => e.businessDay == ChargerSpotServiceTimeBusinessDayEnum.no)
        .map((e) => _toStringServiceTimeDay(e.day));
    if (businessDays.isEmpty) {
      return '-';
    }
    return businessDays.join('、');
  }

  static String _toStringServiceTimeDay(ChargerSpotServiceTimeDayEnum value) {
    switch (value) {
      case ChargerSpotServiceTimeDayEnum.sunday:
        return '日曜日';
      case ChargerSpotServiceTimeDayEnum.monday:
        return '月曜日';
      case ChargerSpotServiceTimeDayEnum.tuesday:
        return '火曜日';
      case ChargerSpotServiceTimeDayEnum.wednesday:
        return '水曜日';
      case ChargerSpotServiceTimeDayEnum.thursday:
        return '木曜日';
      case ChargerSpotServiceTimeDayEnum.friday:
        return '金曜日';
      case ChargerSpotServiceTimeDayEnum.saturday:
        return '土曜日';
      case ChargerSpotServiceTimeDayEnum.holiday:
        return '祝日';
      case ChargerSpotServiceTimeDayEnum.weekday:
        return '平日';
      default:
        return '';
    }
  }

  static String getServiceTime(
      Iterable<ChargerSpotServiceTime> chargerSpotServiceTimes) {
    final now = DateTime.now();
    try {
      final chargerSpotServiceTime = chargerSpotServiceTimes
          .firstWhere((e) => _compareWeekDay(e.day, now.weekday));
      if (chargerSpotServiceTime.startTime == null ||
          chargerSpotServiceTime.endTime == null) {
        return '';
      }
      return '${chargerSpotServiceTime.startTime} - ${chargerSpotServiceTime.endTime}';
    } catch (e) {
      return '';
    }
  }

  static bool _compareWeekDay(
      ChargerSpotServiceTimeDayEnum value, int weekday) {
    switch (value) {
      case ChargerSpotServiceTimeDayEnum.sunday:
        return weekday == 7;
      case ChargerSpotServiceTimeDayEnum.monday:
        return weekday == 1;
      case ChargerSpotServiceTimeDayEnum.tuesday:
        return weekday == 2;
      case ChargerSpotServiceTimeDayEnum.wednesday:
        return weekday == 3;
      case ChargerSpotServiceTimeDayEnum.thursday:
        return weekday == 4;
      case ChargerSpotServiceTimeDayEnum.friday:
        return weekday == 5;
      case ChargerSpotServiceTimeDayEnum.saturday:
        return weekday == 6;
      default:
        return false;
    }
  }
}
