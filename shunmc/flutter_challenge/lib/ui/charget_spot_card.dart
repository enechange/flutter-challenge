import 'package:flutter/material.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:openapi/openapi.dart';
import 'package:url_launcher/url_launcher.dart';

class ChargerSpotCard extends StatelessWidget {
  const ChargerSpotCard(this.chargerSpot, {this.onTap, super.key});

  final ChargerSpot chargerSpot;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: size.width - 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 29,
              offset: Offset(0, 5),
            ),
          ],
          color: Colors.white,
        ),
        child: Material(
          color: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(12),
              child: Column(
                children: [
                  _buildImageList(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(chargerSpot.name),
                        _buildTable(),
                        TextButton(
                          onPressed: _goToMapApp,
                          child: const Text('地図アプリで経路を見る'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageList() {
    return SizedBox(
      height: 60,
      child: Row(
        children: chargerSpot.images == null || chargerSpot.images!.isEmpty
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
    );
  }

  Widget _buildTable() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FixedColumnWidth(12),
        1: FixedColumnWidth(80),
      },
      children: [
        TableRow(
          children: [
            Assets.images.iconPowerPng.image(),
            const Text('利用可能'),
            Text('${chargerSpot.chargerDevices?.length}台'),
          ],
        ),
        TableRow(
          children: [
            Assets.images.iconBoltPng.image(),
            const Text('充電出力'),
            Text('${chargerSpot.chargerDevices?.first.power}kW'),
          ],
        ),
        TableRow(
          children: [
            Assets.images.iconWatchPng.image(),
            _buildChargerSpotNowAvailableText(chargerSpot.nowAvailable),
            Text(_getServiceTime(chargerSpot.chargerSpotServiceTimes)),
          ],
        ),
        TableRow(
          children: [
            Assets.images.iconTodayPng.image(),
            const Text('定休日'),
            Text(_getOffDay(chargerSpot.chargerSpotServiceTimes)),
          ],
        ),
      ],
    );
  }

  Text _buildChargerSpotNowAvailableText(ChargerSpotNowAvailableEnum? value) {
    switch (value) {
      case ChargerSpotNowAvailableEnum.yes:
        return const Text('営業中');
      case ChargerSpotNowAvailableEnum.no:
        return const Text('営業時間外');
      default:
        return const Text('');
    }
  }

  String _getServiceTime(
      Iterable<ChargerSpotServiceTime>? chargerSpotServiceTimes) {
    final now = DateTime.now();
    try {
      final chargerSpotServiceTime = chargerSpotServiceTimes!
          .firstWhere((e) => _compareWeekDay(e.day, now.weekday));
      if (chargerSpotServiceTime.startTime == null ||
          chargerSpotServiceTime.endTime == null) {
        return '';
      }
      return '${chargerSpotServiceTime.startTime} - ${chargerSpotServiceTime.endTime}';
    } catch (e) {
      return '';
    }
  }

  bool _compareWeekDay(ChargerSpotServiceTimeDayEnum value, int weekday) {
    switch (value) {
      case ChargerSpotServiceTimeDayEnum.sunday:
        return weekday == 7;
      case ChargerSpotServiceTimeDayEnum.monday:
        return weekday == 1;
      case ChargerSpotServiceTimeDayEnum.tuesday:
        return weekday == 2;
      case ChargerSpotServiceTimeDayEnum.wednesday:
        return weekday == 3;
      case ChargerSpotServiceTimeDayEnum.thursday:
        return weekday == 4;
      case ChargerSpotServiceTimeDayEnum.friday:
        return weekday == 5;
      case ChargerSpotServiceTimeDayEnum.saturday:
        return weekday == 6;
      default:
        return false;
    }
  }

  String _getOffDay(Iterable<ChargerSpotServiceTime>? chargerSpotServiceTimes) {
    final businessDays = chargerSpotServiceTimes
        ?.where(
            (e) => e.businessDay == ChargerSpotServiceTimeBusinessDayEnum.no)
        .map((e) => _toStringServiceTimeDay(e.day));
    if (businessDays == null || businessDays.isEmpty) {
      return '-';
    }
    return businessDays.join('、');
  }

  String _toStringServiceTimeDay(ChargerSpotServiceTimeDayEnum value) {
    switch (value) {
      case ChargerSpotServiceTimeDayEnum.sunday:
        return '日曜日';
      case ChargerSpotServiceTimeDayEnum.monday:
        return '月曜日';
      case ChargerSpotServiceTimeDayEnum.tuesday:
        return '火曜日';
      case ChargerSpotServiceTimeDayEnum.wednesday:
        return '水曜日';
      case ChargerSpotServiceTimeDayEnum.thursday:
        return '木曜日';
      case ChargerSpotServiceTimeDayEnum.friday:
        return '金曜日';
      case ChargerSpotServiceTimeDayEnum.saturday:
        return '土曜日';
      case ChargerSpotServiceTimeDayEnum.holiday:
        return '祝日';
      case ChargerSpotServiceTimeDayEnum.weekday:
        return '平日';
      default:
        return '';
    }
  }

  Future _goToMapApp() async {
    final url = Uri(
      scheme: 'https',
      host: 'www.google.com',
      path: 'maps/search/',
      queryParameters: {
        'api': '1',
        'query': '${chargerSpot.latitude},${chargerSpot.longitude}',
      },
    );
    if (await canLaunchUrl(url)) {
      launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
