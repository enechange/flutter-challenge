import 'package:flutter/material.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';

class ChargerSpotCard extends StatelessWidget {
  const ChargerSpotCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              height: 72,
              child: Row(
                children: [
                  Expanded(
                    child: Image.network(
                      'https://img01.jalannews.jp/img/2020/04/20200415_kouzu-photo_13-670x443.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Image.network(
                      'https://img01.jalannews.jp/img/2020/04/20200415_kouzu-photo_13-670x443.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('八景島シーパラダイス'),
                  Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    columnWidths: const {
                      0: FixedColumnWidth(12),
                      1: FixedColumnWidth(80),
                    },
                    children: [
                      TableRow(
                        children: [
                          Assets.images.iconPowerPng.image(),
                          Text('利用可能'),
                          Text('12台'),
                        ],
                      ),
                      TableRow(
                        children: [
                          Assets.images.iconBoltPng.image(),
                          Text('充電出力'),
                          Text('4.8kW'),
                        ],
                      ),
                      TableRow(
                        children: [
                          Assets.images.iconWatchPng.image(),
                          Text('営業中'),
                          Text('10:00 - 19:00'),
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
    );
  }
}
