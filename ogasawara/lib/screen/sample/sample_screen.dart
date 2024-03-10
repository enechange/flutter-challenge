import 'dart:math';

import 'package:challenge_oga/component/charger_spot_card.dart';
import 'package:challenge_oga/router.dart';
import 'package:flutter/material.dart';
import 'package:openapi/api.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const IconMaker(chargerCount: 16),
          ChargerSpotCard(
            thumbnailUrls: const [
              "https://www.min-inuzukan.com/data/dogKind/pomeranian/main_pomeranian_d01f4_detail.jpg"
            ],
            name: "ポメラニアンポメラニアンポメラニアンポメラニアンポメラニアン",
            chargerCount: 16,
            output: "4.8",
            serviceTimes: [
              APIChargerSpotServiceTime(
                  businessDay: APIChargerSpotServiceTimeBusinessDayEnum.yes,
                  day: APIChargerSpotServiceTimeDayEnum.friday,
                  today: Random().nextBool())
            ],
          ),
          TextButton(
            onPressed: () {
              const ChargerSpotRouteData().go(context);
            },
            child: const Text('地図画面に移動'),
          ),
        ],
      ),
    );
  }
}
