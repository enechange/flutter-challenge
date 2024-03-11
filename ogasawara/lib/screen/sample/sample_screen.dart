import 'package:challenge_oga/router.dart';
import 'package:challenge_oga/screen/charger_spot/charger_pin_image_generator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
        future: ChargerPinImageGenerator().generatePinImageToPNG(16),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }

          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Image.memory(snapshot.data!),
                ),
                // ChargerSpotCard(
                //   thumbnailUrls: const [
                //     "https://www.min-inuzukan.com/data/dogKind/pomeranian/main_pomeranian_d01f4_detail.jpg"
                //   ],
                //   name: "ポメラニアンポメラニアンポメラニアンポメラニアンポメラニアン",
                //   chargerCount: 16,
                //   output: "4.8",
                //   serviceTimes: [
                //     APIChargerSpotServiceTime(
                //         businessDay: APIChargerSpotServiceTimeBusinessDayEnum.yes,
                //         day: APIChargerSpotServiceTimeDayEnum.friday,
                //         today: Random().nextBool())
                //   ],
                // ),
                TextButton(
                  onPressed: () {
                    const ChargerSpotRouteData().go(context);
                  },
                  child: const Text('地図画面に移動'),
                ),
              ],
            ),
          );
        });
  }
}
