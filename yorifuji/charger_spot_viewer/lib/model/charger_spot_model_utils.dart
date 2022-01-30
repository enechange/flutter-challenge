import 'package:charger_spot_viewer/model/holiday.dart';

import 'charger_spot_model.dart';
import 'date_utils.dart';

double getTotalPower({required ChargerSpot chargerSpot}) {
  double _totalPower = 0;
  if (chargerSpot.chargerDevices != null) {
    for (var device in chargerSpot.chargerDevices!) {
      _totalPower += double.parse(device.power!);
    }
  }
  return _totalPower;
}

String getTotalPowerkW({required ChargerSpot chargerSpot}) {
  return getTotalPower(chargerSpot: chargerSpot).toStringAsFixed(1) + 'kW';
}

/*
  営業時刻の文字列を返す
*/
String getTodaysBussinessHour(
    {required ChargerSpot chargerSpot, DateTime? today}) {
  if (chargerSpot.chargerSpotServiceTimes == null ||
      chargerSpot.chargerSpotServiceTimes!.isEmpty) {
    // null or 空配列の場合 -> 営業時刻：不明
    return ' - ';
  }

  today ??= DateTime.now();

  if (HolidayJP.isHolidayToday(today)) {
    // 祝日の場合
    final serviceTimes = chargerSpot.chargerSpotServiceTimes!
        .where((element) => element.day == "Holiday");
    if (serviceTimes.isNotEmpty) {
      // chargerSpotServiceTimesに祝日が含まれている場合
      if (serviceTimes.first.startTime == null ||
          serviceTimes.first.endTime == null) {
        return ' - ';
      }
      return '${serviceTimes.first.startTime!} - ${serviceTimes.first.endTime!}';
    }
  }

  // 曜日に基づいて戻り値を返却
  final serviceTimes = chargerSpot.chargerSpotServiceTimes!
      .where((element) => element.day == today!.weekdayString());
  if (serviceTimes.isNotEmpty) {
    if (serviceTimes.first.startTime == null ||
        serviceTimes.first.endTime == null) {
      return ' - ';
    }
    return '${serviceTimes.first.startTime!} - ${serviceTimes.first.endTime!}';
  }

  return ' - ';
}

/*
  定休日の文字列を返す
*/
String getClosedDay({required ChargerSpot chargerSpot}) {
  if (chargerSpot.chargerSpotServiceTimes == null ||
      chargerSpot.chargerSpotServiceTimes!.isEmpty) {
    // null or 空配列の場合 -> ' - '
    return ' - ';
  }

  // 定休日を抽出
  final closedDays = chargerSpot.chargerSpotServiceTimes!
      .where((element) => element.businessDay == 'no');

  if (closedDays.isEmpty) {
    // 定休日が空配列の場合 -> `なし`
    return 'なし';
  }

  if (closedDays.length > 1) {
    // 定休日が複数存在する場合 -> 各曜日の短縮文字列を結合する
    // 例：'土日', '土日祝'
    return closedDays.map((e) => getShortWeekdayStringJP(e.day!)).join();
  }

  return getWeekdayStringJP(closedDays.first.day!);
}
