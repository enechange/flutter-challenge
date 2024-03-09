import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for APIChargerSpotServiceTime
void main() {
  final instance = APIChargerSpotServiceTimeBuilder();
  // TODO add properties to the builder and call build()

  group(APIChargerSpotServiceTime, () {
    // yes: 営業日, no: 定休日, unknown: 不明
    // String businessDay
    test('to test the property `businessDay`', () async {
      // TODO
    });

    // 曜日
    // String day
    test('to test the property `day`', () async {
      // TODO
    });

    // 開始時刻
    // String startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // 終了時刻
    // String endTime
    test('to test the property `endTime`', () async {
      // TODO
    });

    // リクエストタイミングにおいてその曜日かどうか
    // bool today
    test('to test the property `today`', () async {
      // TODO
    });

  });
}
