/*
holiday.dart: 2022年の祝日を判定

内閣府
https://www8.cao.go.jp/chosei/shukujitsu/gaiyou.html

2022/1/1	元日
2022/1/10	成人の日
2022/2/11	建国記念の日
2022/2/23	天皇誕生日
2022/3/21	春分の日
2022/4/29	昭和の日
2022/5/3	憲法記念日
2022/5/4	みどりの日
2022/5/5	こどもの日
2022/7/18	海の日
2022/8/11	山の日
2022/9/19	敬老の日
2022/9/23	秋分の日
2022/10/10	スポーツの日
2022/11/3	文化の日
2022/11/23	勤労感謝の日
*/

class Holiday {
  final int year;
  final int month;
  final int day;
  Holiday(this.year, this.month, this.day);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is Holiday) {
      return runtimeType == other.runtimeType &&
          year == other.year &&
          month == other.month &&
          day == other.day;
    } else {
      return false;
    }
  }

  @override
  int get hashCode =>
      (year.toString() + month.toString() + day.toString()).hashCode;
}

class HolidayJP {
  static final List<Holiday> _holidays = [
    Holiday(2022, 1, 1),
    Holiday(2022, 1, 10),
    Holiday(2022, 2, 11),
    Holiday(2022, 2, 23),
    Holiday(2022, 3, 21),
    Holiday(2022, 4, 29),
    Holiday(2022, 5, 3),
    Holiday(2022, 5, 4),
    Holiday(2022, 5, 5),
    Holiday(2022, 7, 18),
    Holiday(2022, 8, 11),
    Holiday(2022, 9, 19),
    Holiday(2022, 9, 23),
    Holiday(2022, 10, 10),
    Holiday(2022, 11, 3),
    Holiday(2022, 11, 23)
  ];

  static bool isHoliday(
      {required int year, required int month, required int day}) {
    return _holidays.contains(Holiday(year, month, day));
  }

  static bool isHolidayToday({now}) {
    now ??= DateTime.now();
    return _holidays.contains(Holiday(now.year, now.month, now.day));
  }
}
