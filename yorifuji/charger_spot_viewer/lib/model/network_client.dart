import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart' as foundation;

import 'charger_spot_model.dart';

Future<List<ChargerSpot>> fetchChargerSpotData() async {
  final response =
      await http.get(Uri.parse('https://stg.evene.jp/api/charger_spots'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    var list = jsonDecode(response.body)['charger_spots'] as List;
    List<ChargerSpot> chargerSpots =
        list.map((model) => ChargerSpot.fromJson(model)).toList();
    if (foundation.kDebugMode) {
      debugDumpChargerSpots(chargerSpots);
    }
    return chargerSpots;
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load charger spot data');
  }
}

void debugDumpChargerSpots(List<ChargerSpot> chargerSpots) {
  for (var spot in chargerSpots) {
    print("--- Spot ---");
    print(spot.name);
    print(spot.latitude);
    print(spot.longitude);
    print(spot.serviceTimeNote);
    if (spot.chargerSpotServiceTimes != null) {
      print("--- ChargerSpotServiceTime ---");
      print(spot.chargerSpotServiceTimes?.length);
    }
    if (spot.chargerDevices != null) {
      print("--- ChargerDevice ---");
      print(spot.chargerDevices?.length);
    }
  }
}
