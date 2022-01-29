import 'package:flutter_test/flutter_test.dart';

import 'package:charger_spot_viewer/model/holiday.dart';

void main() {
  group('Holiday Class', () {
    test('override equals operator, same object', () {
      expect(Holiday(2022, 1, 1) == Holiday(2022, 1, 1), isTrue);
    });
    test('override equals operator, different object', () {
      expect(Holiday(2022, 1, 1) == Holiday(2022, 1, 2), isFalse);
    });
  });
  group('HolidayJP Class', () {
    test('is holiday', () {
      expect(HolidayJP.isHoliday(year: 2022, month: 1, day: 1), isTrue);
      expect(HolidayJP.isHoliday(year: 2022, month: 11, day: 23), isTrue);
      // expect(HolidayJP().isHolidayToday(), isTrue); // depends on the current date.
      expect(HolidayJP.isHolidayToday(now: DateTime.utc(2022, 1, 1)), isTrue);
    });
    test('not holiday', () {
      expect(HolidayJP.isHoliday(year: 2022, month: 1, day: 2), isFalse);
      expect(HolidayJP.isHolidayToday(now: DateTime.utc(2022, 1, 2)), isFalse);
    });
  });
}
