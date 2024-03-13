import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for APIGroupedTotalUnitPricesThisMonthNextMonthByUser
void main() {
  final instance = APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder();
  // TODO add properties to the builder and call build()

  group(APIGroupedTotalUnitPricesThisMonthNextMonthByUser, () {
    // BuiltList<String> chargerDeviceCodes
    test('to test the property `chargerDeviceCodes`', () async {
      // TODO
    });

    // 充電出力
    // String power
    test('to test the property `power`', () async {
      // TODO
    });

    // 適用期限
    // DateTime expires
    test('to test the property `expires`', () async {
      // TODO
    });

    // 最初の60分は無料といった単価設定に対応するため、配列で出力。
    // BuiltList<APIMonthPrice> monthPrices
    test('to test the property `monthPrices`', () async {
      // TODO
    });

  });
}
