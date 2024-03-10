import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openapi/api.dart';

class ChargerSpotCard extends StatelessWidget {
  final List<String> thumbnailUrls;
  final String name;
  final num chargerCount;
  final String output;
  final List<APIChargerSpotServiceTime> serviceTimes;
  final VoidCallback? onPressed;

  const ChargerSpotCard(
      {super.key,
      required this.thumbnailUrls,
      required this.name,
      required this.chargerCount,
      required this.output,
      required this.serviceTimes,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildThumbnail(),
          buildDescription(),
        ],
      ),
    );
  }

  AspectRatio buildThumbnail() {
    return AspectRatio(
      aspectRatio: 5 / 1,
      child: CachedNetworkImage(
        imageUrl: thumbnailUrls.first, // TODO: デザイン上だと1枚
        fit: BoxFit.cover,
        errorWidget: (context, url, error) {
          return SvgPicture.asset('assets/icons/charger_spot_no_image.svg');
        },
      ),
    );
  }

  Widget buildDescription() {
    const columnSpace = 8.0;
    const iconSize = 16.0;
    const iconToLabelSpace = 2.0;
    const labelToValueSpace = 24.0;

    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: columnSpace),
          Row(
            children: [
              const Icon(
                Icons.power,
                size: iconSize,
              ),
              const SizedBox(width: iconToLabelSpace),
              const Text('充電器数'),
              const SizedBox(width: labelToValueSpace),
              Text('$chargerCount台')
            ],
          ),
          const SizedBox(height: columnSpace),
          Row(
            children: [
              const Icon(Icons.bolt, size: iconSize),
              const SizedBox(width: iconToLabelSpace),
              const Text('充電器数'),
              const SizedBox(width: 24),
              Text('$chargerCount台')
            ],
          ),
          const SizedBox(height: columnSpace),
          Row(
            children: [
              const Icon(Icons.watch_later_outlined, size: iconSize),
              const SizedBox(width: iconToLabelSpace),
              const Text('充電器数'),
              const SizedBox(width: iconToLabelSpace),
              Text('$chargerCount台')
            ],
          ),
          const SizedBox(height: columnSpace),
          Row(
            children: [
              const Icon(Icons.today, size: iconSize),
              const SizedBox(width: iconToLabelSpace),
              const Text('充電器数'),
              const SizedBox(width: iconToLabelSpace),
              Text('$chargerCount台')
            ],
          ),
          const SizedBox(height: columnSpace),
          const Padding(
            padding: EdgeInsets.only(left: 2),
            child: Row(
              children: [
                Text(
                  '地図アプリで経路を見る',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.filter_none, size: iconSize),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
