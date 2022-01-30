/*
  DateTime.WeekdayString()
    曜日の文字列を返す関数
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
