import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for APIPrice
void main() {
  final instance = APIPriceBuilder();
  // TODO add properties to the builder and call build()

  group(APIPrice, () {
    // String price
    test('to test the property `price`', () async {
      // TODO
    });

    // String price3kw
    test('to test the property `price3kw`', () async {
      // TODO
    });

    // 課金の単位時間（unit_valueに移管するので使わない）
    // String unitMinutes
    test('to test the property `unitMinutes`', () async {
      // TODO
    });

    // num minuteFrom
    test('to test the property `minuteFrom`', () async {
      // TODO
    });

    // num minuteTo
    test('to test the property `minuteTo`', () async {
      // TODO
    });

    // 単価が時間課金かkWh課金か
    // String unitType
    test('to test the property `unitType`', () async {
      // TODO
    });

    // 課金の単位の数値（unit_typeがminuteでunit_valueが10なら10分あたり）
    // String unitValue
    test('to test the property `unitValue`', () async {
      // TODO
    });

    // num kwhFrom
    test('to test the property `kwhFrom`', () async {
      // TODO
    });

    // num kwhTo
    test('to test the property `kwhTo`', () async {
      // TODO
    });

  });
}
