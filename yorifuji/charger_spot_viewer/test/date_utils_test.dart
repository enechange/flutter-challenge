import 'package:flutter_test/flutter_test.dart' show expect, test;
import 'package:charger_spot_viewer/model/date_utils.dart';

void main() {
  test('Test DateTime.weekdayString', () {
    expect(DateTime.utc(2022, 1, 23).weekdayString(), 'Sunday');
    expect(DateTime.utc(2022, 1, 24).weekdayString(), 'Monday');
    expect(DateTime.utc(2022, 1, 25).weekdayString(), 'Tuesday');
    expect(DateTime.utc(2022, 1, 26).weekdayString(), 'Wednesday');
    expect(DateTime.utc(2022, 1, 27).weekdayString(), 'Thursday');
    expect(DateTime.utc(2022, 1, 28).weekdayString(), 'Friday');
    expect(DateTime.utc(2022, 1, 29).weekdayString(), 'Saturday');
  });

  test('Test getWeekdayStringJP', () {
    expect(getWeekdayStringJP('Sunday'), '日曜日');
    expect(getWeekdayStringJP('Monday'), '月曜日');
    expect(getWeekdayStringJP('Tuesday'), '火曜日');
    expect(getWeekdayStringJP('Wednesday'), '水曜日');
    expect(getWeekdayStringJP('Thursday'), '木曜日');
    expect(getWeekdayStringJP('Friday'), '金曜日');
    expect(getWeekdayStringJP('Saturday'), '土曜日');
    expect(getWeekdayStringJP('Holiday'), '祝日');

    expect(getWeekdayStringJP('FooBarday'), '');
  });

  test('Test getShortWeekdayStringJP', () {
    expect(getShortWeekdayStringJP('Sunday'), '日');
    expect(getShortWeekdayStringJP('Monday'), '月');
    expect(getShortWeekdayStringJP('Tuesday'), '火');
    expect(getShortWeekdayStringJP('Wednesday'), '水');
    expect(getShortWeekdayStringJP('Thursday'), '木');
    expect(getShortWeekdayStringJP('Friday'), '金');
    expect(getShortWeekdayStringJP('Saturday'), '土');
    expect(getShortWeekdayStringJP('Holiday'), '祝');

    expect(getShortWeekdayStringJP('FooBarday'), '');
  });
}
