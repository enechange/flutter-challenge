import 'package:flutter/material.dart';
import 'package:yosken_challenge1/component/card_row_service_time.dart';
import 'package:yosken_challenge1/src/chargespots.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';

Widget makeRowOfServiceTime(ChargerSpot chargerSpot) {
  final serviceTimes = chargerSpot.charger_spot_service_times;
  for (SpotServiceTime times in serviceTimes!) {
    if (times.today!) {
      if (times.start_time == null) {
        return makeRowForServiceTime(timeIcon, textWhenUnknown, hyphen);
      }
      final startTime = times.start_time;
      final endTime = times.end_time;
      final serviceTime = '$startTime-$endTime';
      if (chargerSpot.now_available == 'yes') {
        return makeRowForServiceTime(timeIcon, textWhenOpen, serviceTime);
      } else if (chargerSpot.now_available == 'no') {
        return makeRowForServiceTime(timeIcon, textWhenClose, serviceTime);
      } else {
        return makeRowForServiceTime(timeIcon, textWhenClose, serviceTime);
      }
    }
  }
  return makeRowForServiceTime(timeIcon, textWhenUnknown, hyphen);
}
