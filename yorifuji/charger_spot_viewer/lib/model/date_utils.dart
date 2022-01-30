/*
  DateTime.WeekdayString()
    曜日の英語文字列を返す関数
*/

extension WeekdayString on DateTime {
  String weekdayString() {
    switch (weekday) {
      case DateTime.sunday:
        return "Sunday";
      case DateTime.monday:
        return "Monday";
      case DateTime.tuesday:
        return "Tuesday";
      case DateTime.wednesday:
        return "Wednesday";
      case DateTime.thursday:
        return "Thursday";
      case DateTime.friday:
        return "Friday";
      case DateTime.saturday:
        return "Saturday";
    }
    return ""; // may not excute this code.
  }
}

/*
  String getWeekdayStringJP(String weekdayStringEN)
    英語の曜日から日本語の曜日の文字列を取得
    例：'Sunday' -> `日曜日`
*/
String getWeekdayStringJP(String weekdayStringEN) {
  final map = <String, String>{
    'Sunday': '日曜日',
    'Monday': '月曜日',
    'Tuesday': '火曜日',
    'Wednesday': '水曜日',
    'Thursday': '木曜日',
    'Friday': '金曜日',
    'Saturday': '土曜日',
    'Holiday': '祝日'
  };

  if (map.containsKey(weekdayStringEN)) {
    return map[weekdayStringEN]!;
  }
  return '';
}

/*
  String getWeekdayStringJP(String weekdayStringEN)
    英語の曜日から日本語（短縮版）の曜日の文字列を取得
    例：'Sunday' -> '日'
*/
String getShortWeekdayStringJP(String weekdayStringEN) {
  final week = getWeekdayStringJP(weekdayStringEN);
  if (week.isNotEmpty) {
    return week.substring(0, 1);
  }
  return '';
}
