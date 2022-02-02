import 'dart:convert';
import 'package:flutter_test/flutter_test.dart' show expect, group, test;
import 'package:charger_spot_viewer/model/charger_spot_model.dart';
import 'package:charger_spot_viewer/model/charger_spot_model_utils.dart';

void main() {
  group('Test getTodaysBussinessHour()', () {
    var list = jsonDecode(sampleData1)['charger_spots'] as List;
    List<ChargerSpot> chargerSpots =
        list.map((model) => ChargerSpot.fromJson(model)).toList();

    String bussinessHour;

    test('Case: 00:00 - 24:00', () {
      // chargerSpots[0]
      bussinessHour = getTodaysBussinessHour(
          chargerSpot: chargerSpots[0],
          today: DateTime.utc(2022, 1, 23)); // Sunday
      expect(bussinessHour, '00:00 - 24:00');
    });

    test('Case:  - ', () {
      // chargerSpots[1]
      bussinessHour = getTodaysBussinessHour(
          chargerSpot: chargerSpots[1],
          today: DateTime.utc(2022, 1, 1)); // Holiday
      expect(bussinessHour, ' - ');
    });
  });
  group('Test getClosedDay()', () {
    test('Case: 日曜日', () {
      var list = jsonDecode(sampleData2)['charger_spots'] as List;
      List<ChargerSpot> chargerSpots =
          list.map((model) => ChargerSpot.fromJson(model)).toList();
      expect(getClosedDay(chargerSpot: chargerSpots[0]), '日曜日');
    });
    test('Case: 土日', () {
      var list = jsonDecode(sampleData3)['charger_spots'] as List;
      List<ChargerSpot> chargerSpots =
          list.map((model) => ChargerSpot.fromJson(model)).toList();
      expect(getClosedDay(chargerSpot: chargerSpots[0]), '土日');
    });
    test('Case: 土日祝', () {
      var list = jsonDecode(sampleData4)['charger_spots'] as List;
      List<ChargerSpot> chargerSpots =
          list.map((model) => ChargerSpot.fromJson(model)).toList();
      expect(getClosedDay(chargerSpot: chargerSpots[0]), '土日祝');
    });
    test('Case: なし', () {
      var list = jsonDecode(sampleData5)['charger_spots'] as List;
      List<ChargerSpot> chargerSpots =
          list.map((model) => ChargerSpot.fromJson(model)).toList();
      expect(getClosedDay(chargerSpot: chargerSpots[0]), 'なし');
    });
    test('Case:  - ', () {
      var list = jsonDecode(sampleData6)['charger_spots'] as List;
      List<ChargerSpot> chargerSpots =
          list.map((model) => ChargerSpot.fromJson(model)).toList();
      expect(getClosedDay(chargerSpot: chargerSpots[0]), ' - ');
    });
  });
}

const sampleData1 = '''
{
  "charger_spots": [
    {
      "name": "case 1",
      "latitude": null,
      "longitude": null,
      "service_time_note": null,
      "charger_spot_service_times": [
        {
          "start_time": "00:00",
          "end_time": "24:00",
          "business_day": "yes",
          "day": "Sunday"
        }
      ],
      "charger_devices": []
    },
    {
      "name": "case 2",
      "latitude": null,
      "longitude": null,
      "service_time_note": null,
      "charger_spot_service_times": [
        {
          "start_time": null,
          "end_time": null,
          "business_day": "no",
          "day": "Holiday"
        }
      ],
      "charger_devices": []
    }
  ]
}
''';

const sampleData2 = '''
{
  "charger_spots": [
    {
      "name": "case 1",
      "latitude": null,
      "longitude": null,
      "service_time_note": null,
      "charger_spot_service_times": [
        {
          "start_time": null,
          "end_time": null,
          "business_day": "no",
          "day": "Sunday"
        }
      ],
      "charger_devices": []
    }
  ]
}
''';

const sampleData3 = '''
{
  "charger_spots": [
    {
      "name": "case 1",
      "latitude": null,
      "longitude": null,
      "service_time_note": null,
      "charger_spot_service_times": [
        {
          "start_time": null,
          "end_time": null,
          "business_day": "no",
          "day": "Saturday"
        },
        {
          "start_time": null,
          "end_time": null,
          "business_day": "no",
          "day": "Sunday"
        }
      ],
      "charger_devices": []
    }
  ]
}
''';

const sampleData4 = '''
{
  "charger_spots": [
    {
      "name": "case 1",
      "latitude": null,
      "longitude": null,
      "service_time_note": null,
      "charger_spot_service_times": [
        {
          "start_time": null,
          "end_time": null,
          "business_day": "no",
          "day": "Saturday"
        },
        {
          "start_time": null,
          "end_time": null,
          "business_day": "no",
          "day": "Sunday"
        },
        {
          "start_time": null,
          "end_time": null,
          "business_day": "no",
          "day": "Holiday"
        }
      ],
      "charger_devices": []
    }
  ]
}
''';

const sampleData5 = '''
{
  "charger_spots": [
    {
      "name": "case 1",
      "latitude": null,
      "longitude": null,
      "service_time_note": null,
      "charger_spot_service_times": [
        {
          "start_time": "00:00",
          "end_time": "24:00",
          "business_day": "yes",
          "day": "Sunday"
        }
      ],
      "charger_devices": []
    }
  ]
}
''';

const sampleData6 = '''
{
  "charger_spots": [
    {
      "name": "case 1",
      "latitude": null,
      "longitude": null,
      "service_time_note": null,
      "charger_spot_service_times": [],
      "charger_devices": []
    }
  ]
}
''';
