import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:charger_spot_viewer/model/charger_spot_model.dart';
import 'package:charger_spot_viewer/widget/charger_spot_card_widget.dart';

void main() {
  testWidgets('Charget Spot Card Widget Test', (WidgetTester tester) async {
    // カードWidgetの作成
    ChargerSpot chargerSpot =
        ChargerSpot.fromJson(jsonDecode(testChargserSpot));
    var cardWidget = buildChargerSpotCard(chargerSpot: chargerSpot);
    await tester.pumpWidget(MaterialApp(home: cardWidget));

    // カードの表示内容のテスト
    expect(find.text('テストビル'), findsOneWidget); // 名前
    expect(find.text('1'), findsOneWidget); // 利用可能台数
    expect(find.text('1.0kW'), findsOneWidget); // 充電出力
    expect(find.text('00:00 - 24:00'), findsOneWidget); // 営業時間
    expect(find.text('日曜日'), findsOneWidget); // 定休日
  });
}

const testChargserSpot = '''
{
  "name": "テストビル",
  "latitude": 35.685255491019944,
  "longitude": 139.76962079504972,
  "service_time_note": null,
  "charger_spot_service_times": [
    {
      "start_time": "00:00",
      "end_time": "24:00",
      "business_day": "no",
      "day": "Sunday"
    },
    {
      "start_time": "00:00",
      "end_time": "24:00",
      "business_day": "yes",
      "day": "Monday"
    },
    {
      "start_time": "00:00",
      "end_time": "24:00",
      "business_day": "yes",
      "day": "Tuesday"
    },
    {
      "start_time": "00:00",
      "end_time": "24:00",
      "business_day": "yes",
      "day": "Wednesday"
    },
    {
      "start_time": "00:00",
      "end_time": "24:00",
      "business_day": "yes",
      "day": "Thursday"
    },
    {
      "start_time": "00:00",
      "end_time": "24:00",
      "business_day": "yes",
      "day": "Friday"
    },
    {
      "start_time": "00:00",
      "end_time": "24:00",
      "business_day": "yes",
      "day": "Saturday"
    },
    {
      "start_time": "00:00",
      "end_time": "24:00",
      "business_day": "yes",
      "day": "Holiday"
    }
  ],
  "charger_devices": [
    {
      "name": "テストビル１",
      "maker_code": "XXX",
      "product_code": "XXX",
      "serial_number": "XXX",
      "service_start_time": null,
      "service_end_time": null,
      "allow_current": null,
      "max_charge_time": null,
      "latitude": 35.685255491019944,
      "longitude": 139.76962079504972,
      "display_status": "no_info",
      "power": "1"
    }
  ]
}
''';
