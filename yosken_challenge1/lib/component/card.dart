import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yosken_challenge1/constant/others.dart';
import 'package:yosken_challenge1/model/camera_move.dart';
import 'package:yosken_challenge1/src/chargespots.dart';
import 'card_image.dart';
import 'package:yosken_challenge1/component/row_of_card/importer_card_row.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';

Widget makeCard(ChargerSpot chargerSpot, int index, context,
    GoogleMapController mapController) {
  return InkWell(
    onTap: () {
      pageController.jumpToPage(index);
      Navigator.pop(context);
      moveCameraForPageChanged(mapController, chargerSpot);
    },
    child: Padding(
      padding: const EdgeInsets.only(bottom: betweenCardsForListView),
      child: Card(
          margin: const EdgeInsets.symmetric(horizontal: paddingOfCardsFromSide),
          elevation: cardElevation,
          shadowColor: cardShadowColor,
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          shape: cardShape,
          child: Column(
            children: [
              //画像
              makeRowOfImage(chargerSpot),
              //名前
              makeRowOfName(chargerSpot),
              //充電器数
              makeRowOfNumber(chargerSpot, index),
              //充電出力
              makeRowOfPower(chargerSpot),
              //営業時間
              makeRowOfServiceTime(chargerSpot),
              //定休日
              makeRowOfRegularHoliday(chargerSpot),
              //リンク
              makeLinkToApp(),
            ],
          )),
    ),
  );
}

Widget makeCardForPageView(ChargerSpot chargerSpot, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: betweenCardsForPageView),
    child: Card(
        margin: EdgeInsets.zero,
        shadowColor: cardShadowColor,
        elevation: cardElevation,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: cardShape,
        child: Column(
          children: [
            //画像
            makeRowOfImage(chargerSpot),
            //名前
            makeRowOfName(chargerSpot),
            //充電器数
            makeRowOfNumber(chargerSpot, index),
            //充電出力
            makeRowOfPower(chargerSpot),
            //営業時間
            makeRowOfServiceTime(chargerSpot),
            //定休日
            makeRowOfRegularHoliday(chargerSpot),
            //リンク
            makeLinkToApp(),
          ],
        )),
  );
}
