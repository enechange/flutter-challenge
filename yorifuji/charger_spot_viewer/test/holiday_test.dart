import 'package:flutter_test/flutter_test.dart';

import 'package:charger_spot_viewer/model/holiday.dart';

void main() {
  group('Test Holiday Class', () {
    test('Test equals operator, same object', () {
      expect(Holiday(2022, 1, 1) == Holiday(2022, 1, 1), isTrue);
    });
    test('Test equals operator, different object', () {
      expect(Holiday(2022, 1, 1) == Holiday(2022, 1, 2), isFalse);
    });
  });
  group('Test HolidayJP Class', () {
    test('Test isHoliday()', () {
      expect(HolidayJP.isHoliday(year: 2022, month: 1, day: 1), isTrue);
      expect(HolidayJP.isHoliday(year: 2022, month: 11, day: 23), isTrue);
      expect(HolidayJP.isHoliday(year: 2022, month: 1, day: 2), isFalse);
    });
    test('Test isHolidayToday()', () {
      expect(HolidayJP.isHolidayToday(DateTime.utc(2022, 1, 1)), isTrue);
      expect(HolidayJP.isHolidayToday(DateTime.utc(2022, 1, 2)), isFalse);
      // expect(HolidayJP().isHolidayToday(), isTrue); // depends on the current date.
    });
  });
}
