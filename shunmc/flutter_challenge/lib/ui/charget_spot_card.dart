import 'package:flutter/material.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:openapi/openapi.dart';

class ChargerSpotCard extends StatelessWidget {
  const ChargerSpotCard(this.chargerSpot, {super.key});

  final ChargerSpot chargerSpot;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 29,
              offset: Offset(0, 5),
            ),
          ],
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  children:
                      chargerSpot.images == null || chargerSpot.images!.isEmpty
                          ? [
                              Expanded(
                                child: Assets.images.noimage.image(
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ]
                          : chargerSpot.images!
                              .map(
                                (e) => Expanded(
                                  child: Image.network(
                                    e.url,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              )
                              .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(chargerSpot.name),
                    Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      columnWidths: const {
                        0: FixedColumnWidth(12),
                        1: FixedColumnWidth(80),
                      },
                      children: [
                        TableRow(
                          children: [
                            Assets.images.iconPowerPng.image(),
                            Text('利用可能'),
                            Text('${chargerSpot.chargerDevices?.length}台'),
                          ],
                        ),
                        TableRow(
                          children: [
                            Assets.images.iconBoltPng.image(),
                            Text('充電出力'),
                            Text(
                                '${chargerSpot.chargerDevices?.first.power}kW'),
                          ],
                        ),
                        TableRow(
                          children: [
                            Assets.images.iconWatchPng.image(),
                            Text(chargerSpot.nowAvailable?.toString() ?? ''),
                            Text(
                                '${chargerSpot.chargerSpotServiceTimes?.first.startTime} - ${chargerSpot.chargerSpotServiceTimes?.first.endTime}'),
                          ],
                        ),
                        TableRow(
                          children: [
                            Assets.images.iconTodayPng.image(),
                            Text('定休日'),
                            Text('祝日'),
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text('地図アプリで経路を見る'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
