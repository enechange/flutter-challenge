import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spot_utility.dart';
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
      padding: const EdgeInsets.all(10),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chargerSpot.name,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        _buildTable(context),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: _buildGoToMapTextButton(context),
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
    List<Widget> images = chargerSpot.images
            ?.map(
              (e) => Expanded(
                child: Image.network(e.url, fit: BoxFit.fitWidth),
              ),
            )
            .toList() ??
        [];
    if (images.isEmpty) {
      images.add(
        Expanded(child: Assets.images.noimage.image(fit: BoxFit.fitWidth)),
      );
    }
    if (images.length >= 2) {
      images = [
        images[0],
        const SizedBox(width: 2),
        images[1],
      ];
    }
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: images,
      ),
    );
  }

  Widget _buildTable(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FixedColumnWidth(20),
        1: FixedColumnWidth(80),
      },
      children: [
        TableRow(
          children: [
            Assets.images.iconPower.image(height: 30),
            const Text('利用可能'),
            Text(ChargerSpotUtility.getAvailableSpotCount(
                    chargerSpot.chargerDevices ?? [])
                .toString()),
          ],
        ),
        TableRow(
          children: [
            Assets.images.iconBolt.image(height: 30),
            const Text('充電出力'),
            Text(ChargerSpotUtility.getPower(chargerSpot.chargerDevices ?? [])),
          ],
        ),
        TableRow(
          children: [
            Assets.images.iconWatch.image(height: 30),
            _buildChargerSpotNowAvailableText(
                context, chargerSpot.nowAvailable),
            Text(ChargerSpotUtility.getServiceTime(
                chargerSpot.chargerSpotServiceTimes ?? [])),
          ],
        ),
        TableRow(
          children: [
            Assets.images.iconToday.image(height: 30),
            const Text('定休日'),
            Text(ChargerSpotUtility.getOffDay(
                chargerSpot.chargerSpotServiceTimes ?? [])),
          ],
        ),
      ],
    );
  }

  Text _buildChargerSpotNowAvailableText(
      BuildContext context, ChargerSpotNowAvailableEnum? value) {
    switch (value) {
      case ChargerSpotNowAvailableEnum.yes:
        return Text(
          '営業中',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: const Color(0xff55c500),
              ),
        );
      case ChargerSpotNowAvailableEnum.no:
        return Text(
          '営業時間外',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: const Color(0xff939393),
              ),
        );
      default:
        return const Text('');
    }
  }

  TextButton _buildGoToMapTextButton(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(Size.zero),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      onPressed: _goToMapApp,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '地図アプリで経路を見る',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: const Color(0xff55c500),
                    decoration: TextDecoration.underline,
                  ),
            ),
            const WidgetSpan(
              child: Icon(
                Icons.launch,
                size: 18,
                color: Color(0xff55c500),
              ),
            ),
          ],
        ),
      ),
    );
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
