import 'package:flutter/material.dart';
import 'package:yosken_challenge1/src/chargespots.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';
import 'package:yosken_challenge1/component/card_row.dart';

Widget makeRowOfRegularHoliday(ChargerSpot chargerSpot) {
  final serviceTimes = chargerSpot.charger_spot_service_times;
  List<String> regularHolidayList = [];
  regularHolidayList =
      makeRegularHolidayList(serviceTimes!, regularHolidayList);
  return makeRowForCard(
      holidayIcon, holidayTitle, regularHolidayList.join('、'));
}

List<String> makeRegularHolidayList(
    List<SpotServiceTime> serviceTimes, List<String> regularHoliday) {

  for (SpotServiceTime serviceTime in serviceTimes) {
    if (serviceTime.business_day == 'no') {
      regularHoliday.add(dayOfWeek[serviceTime.day]!);
    }
  }
  //定休日が５個以上ある場合、一文字に変換する
  if(regularHoliday.length>4){
    for(int i = 0 ;i<regularHoliday.length;i++){
      final day = regularHoliday[i];
      regularHoliday[i] = dayOfWeekInOneCharacter[day]!;
    }
  }
  return regularHoliday.isNotEmpty ? regularHoliday : [hyphen];
}
