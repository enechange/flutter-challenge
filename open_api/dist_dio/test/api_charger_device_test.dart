import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for APIChargerDevice
void main() {
  final instance = APIChargerDeviceBuilder();
  // TODO add properties to the builder and call build()

  group(APIChargerDevice, () {
    // 充電器の名称
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // 充電器番号
    // String code
    test('to test the property `code`', () async {
      // TODO
    });

    // メーカーコード
    // String makerCode
    test('to test the property `makerCode`', () async {
      // TODO
    });

    // 製品コード
    // String productCode
    test('to test the property `productCode`', () async {
      // TODO
    });

    // シリアル番号
    // String serialNumber
    test('to test the property `serialNumber`', () async {
      // TODO
    });

    // サービス開始時刻
    // String serviceStartTime
    test('to test the property `serviceStartTime`', () async {
      // TODO
    });

    // サービス終了時刻
    // String serviceEndTime
    test('to test the property `serviceEndTime`', () async {
      // TODO
    });

    // 充電許容電流
    // String allowCurrent
    test('to test the property `allowCurrent`', () async {
      // TODO
    });

    // 最大充電時間
    // String maxChargeTime
    test('to test the property `maxChargeTime`', () async {
      // TODO
    });

    // 緯度
    // num latitude
    test('to test the property `latitude`', () async {
      // TODO
    });

    // 経度
    // num longitude
    test('to test the property `longitude`', () async {
      // TODO
    });

    // 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど）
    // String displayStatus
    test('to test the property `displayStatus`', () async {
      // TODO
    });

    // 充電電力（3.2, 4.8, 6のどれかで6が基本。今後増える可能性あり）
    // String power
    test('to test the property `power`', () async {
      // TODO
    });

    // 充電料金（有料, 条件付き無料, 無料, 不明）
    // String fee
    test('to test the property `fee`', () async {
      // TODO
    });

    // 最終更新タイミング
    // String lastUpdated
    test('to test the property `lastUpdated`', () async {
      // TODO
    });

  });
}
