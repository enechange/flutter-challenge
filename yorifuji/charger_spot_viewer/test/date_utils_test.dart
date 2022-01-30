import 'package:flutter_test/flutter_test.dart';

import 'package:charger_spot_viewer/model/date_utils.dart';

void main() {
  test('Test weekdayString', () {
    expect(DateTime.utc(2022, 1, 23).weekdayString(), 'Sunday');
    expect(DateTime.utc(2022, 1, 24).weekdayString(), 'Monday');
    expect(DateTime.utc(2022, 1, 25).weekdayString(), 'Tuesday');
    expect(DateTime.utc(2022, 1, 26).weekdayString(), 'Wednesday');
    expect(DateTime.utc(2022, 1, 27).weekdayString(), 'Thursday');
    expect(DateTime.utc(2022, 1, 28).weekdayString(), 'Friday');
    expect(DateTime.utc(2022, 1, 29).weekdayString(), 'Saturday');
  });
}
