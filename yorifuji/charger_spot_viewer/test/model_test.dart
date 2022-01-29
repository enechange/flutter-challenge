import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:charger_spot_viewer/model/charger_spot_model.dart';

const sampleData = '''
{
  "charger_spots": [
    {
      "name": "テストビル",
      "latitude": 1.0,
      "longitude": 2.0,
      "service_time_note": "これはテストデータです",
      "charger_spot_service_times": [
        {
          "start_time": "00:00",
          "end_time": "24:00",
          "business_day": "yes",
          "day": "Sunday"
        }
      ],
      "charger_devices": [
        {
          "name": "テストデバイス",
          "maker_code": "100",
          "product_code": "200",
          "serial_number": "300",
          "service_start_time": null,
          "service_end_time": null,
          "allow_current": null,
          "max_charge_time": null,
          "latitude": 1.0,
          "longitude": 2.0,
          "display_status": "no_info",
          "power": "1.0"
        }
      ]
    }
  ]
}
''';

void main() {
  test('JSONがデコードできる', () {
    // sampleDataをJSONに変換
    var charger_spots = jsonDecode(sampleData);

    // 'charger_spots' を List　に変換
    var list = charger_spots['charger_spots'] as List;

    // ChargerSpot に変換
    List<ChargerSpot> chargerSpots =
        list.map((model) => ChargerSpot.fromJson(model)).toList();

    // ChargerSpot
    expect(chargerSpots.length, equals(1));
    expect(chargerSpots[0].name, equals("テストビル"));
    expect(chargerSpots[0].latitude, equals(1.0));
    expect(chargerSpots[0].longitude, equals(2.0));
    expect(chargerSpots[0].serviceTimeNote, equals("これはテストデータです"));

    // ChargerSpotServiceTime
    expect(chargerSpots[0].chargerSpotServiceTimes, isNotNull);
    expect(
        chargerSpots[0].chargerSpotServiceTimes![0].startTime, equals("00:00"));
    expect(
        chargerSpots[0].chargerSpotServiceTimes![0].endTime, equals("24:00"));
    expect(
        chargerSpots[0].chargerSpotServiceTimes![0].businessDay, equals("yes"));
    expect(chargerSpots[0].chargerSpotServiceTimes![0].day, equals("Sunday"));

    // ChargerDevice
    expect(chargerSpots[0].chargerDevices, isNotNull);
    expect(chargerSpots[0].chargerDevices![0].name, equals("テストデバイス"));
    expect(chargerSpots[0].chargerDevices![0].makerCode, equals("100"));
    expect(chargerSpots[0].chargerDevices![0].productCode, equals("200"));
    expect(chargerSpots[0].chargerDevices![0].serialNumber, equals("300"));
    expect(chargerSpots[0].chargerDevices![0].serviceStartTime, isNull);
    expect(chargerSpots[0].chargerDevices![0].serviceEndTime, isNull);
    expect(chargerSpots[0].chargerDevices![0].allowCurrent, isNull);
    expect(chargerSpots[0].chargerDevices![0].maxChargeTime, isNull);
    expect(chargerSpots[0].chargerDevices![0].latitude, equals(1.0));
    expect(chargerSpots[0].chargerDevices![0].longitude, equals(2.0));
    expect(chargerSpots[0].chargerDevices![0].displayStatus, equals("no_info"));
    expect(chargerSpots[0].chargerDevices![0].power, equals("1.0"));
  });
}
