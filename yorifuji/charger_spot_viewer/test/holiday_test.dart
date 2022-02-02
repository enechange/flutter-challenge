import 'package:flutter_test/flutter_test.dart';
import 'package:charger_spot_viewer/model/holiday.dart';

void main() {
  group('Test Holiday Class', () {
    test('Test equals operator, same object', () {
      expect(Holiday(2022, 1, 1) == Holiday(2022, 1, 1), isTrue);
      expect(Holiday(2022, 1, 31) == Holiday(2022, 1, 31), isTrue);
    });
    test('Test equals operator, different object', () {
      expect(Holiday(2022, 1, 1) == Holiday(2022, 1, 2), isFalse);
      expect(Holiday(2022, 1, 11) == Holiday(2022, 11, 1), isFalse);
    });
  });
  group('Test HolidayJP Class', () {
    test('Test isHoliday()', () {
      expect(HolidayJP.isHoliday(2022, 1, 1), isTrue);
      expect(HolidayJP.isHoliday(2022, 11, 23), isTrue);
      expect(HolidayJP.isHoliday(2022, 1, 2), isFalse);
    });
    test('Test isHolidayToday()', () {
      expect(HolidayJP.isHolidayToday(DateTime.utc(2022, 1, 1)), isTrue);
      expect(HolidayJP.isHolidayToday(DateTime.utc(2022, 1, 2)), isFalse);
      // expect(HolidayJP().isHolidayToday(), isTrue); // depends on the current date.
    });
  });
}
