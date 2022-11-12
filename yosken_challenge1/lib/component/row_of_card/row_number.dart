import 'package:flutter/material.dart';
import 'package:yosken_challenge1/src/chargespots.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';
import 'package:yosken_challenge1/component/card_row.dart';

Widget makeRowOfNumber(ChargerSpot chargerSpot, int index) {
  if (chargerSpot.gogoev_charger_devices == null ||
      chargerSpot.gogoev_charger_devices!.isEmpty) {
    return makeRowForCard(numberIcon, numberTitle, defaultNumber);
  } else {
    final gogoevChargerDevice = chargerSpot.gogoev_charger_devices!;
    final number = gogoevChargerDevice[index].number;
    final numberOfCharger = '$number台';
    return makeRowForCard(numberIcon, numberTitle, numberOfCharger);
  }
}
