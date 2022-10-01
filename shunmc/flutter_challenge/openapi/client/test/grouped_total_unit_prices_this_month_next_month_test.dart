import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for GroupedTotalUnitPricesThisMonthNextMonth
void main() {
  final instance = GroupedTotalUnitPricesThisMonthNextMonthBuilder();
  // TODO add properties to the builder and call build()

  group(GroupedTotalUnitPricesThisMonthNextMonth, () {
    // BuiltList<String> chargerDeviceCodes
    test('to test the property `chargerDeviceCodes`', () async {
      // TODO
    });

    // 充電出力
    // String power
    test('to test the property `power`', () async {
      // TODO
    });

    // 最初の60分は無料といった単価設定に対応するため、配列で出力。
    // BuiltList<MonthPrice> monthPrices
    test('to test the property `monthPrices`', () async {
      // TODO
    });

  });
}
