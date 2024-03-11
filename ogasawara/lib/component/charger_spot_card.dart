import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge_oga/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openapi/api.dart';

class ChargerSpotCard extends StatelessWidget {
  final APIChargerSpot chargerSpot;
  final VoidCallback? onPressed;

  const ChargerSpotCard({
    super.key,
    required this.chargerSpot,
    this.onPressed,
  });

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

  Widget buildThumbnail() {
    final existFirstImage =
        chargerSpot.images.firstOrNull?.url.isNotEmpty == true;
    return AspectRatio(
      aspectRatio: 5 / 1,
      child: existFirstImage
          ? CachedNetworkImage(
              imageUrl: chargerSpot.images.firstOrNull?.url ?? '',
              fit: BoxFit.cover,
              errorWidget: (context, url, error) {
                return const Center(
                  child: Text('Load Error'),
                );
              },
            )
          : SvgPicture.asset('assets/icons/charger_spot_no_image.svg'),
    );
  }

  Widget buildDescription() {
    const spacer = SizedBox(height: 8.0);

    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildChargeName(),
          spacer,
          _buildChargerDevice(),
          spacer,
          _buildChargerPower(),
          spacer,
          _buildBusinessHours(),
          spacer,
          _buildRegularHoliday(),
          spacer,
          _buildMapApp(),
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String title,
    required String description,
    Color titleColor = textColor,
    Color descriptionColor = textColor,
  }) {
    return Row(
      children: [
        Icon(icon, size: 16),
        const SizedBox(width: 2),
        SizedBox(
          width: 70,
          child: Text(title, style: TextStyle(color: titleColor)),
        ),
        const SizedBox(width: 24),
        Flexible(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              description,
              style: TextStyle(color: descriptionColor),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildChargeName() {
    return Text(
      chargerSpot.name,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          overflow: TextOverflow.ellipsis),
    );
  }

  Widget _buildChargerDevice() {
    return _buildInfoRow(
      icon: Icons.power,
      title: "充電器数",
      description: "${chargerSpot.chargerDevices.length}台",
    );
  }

  Widget _buildChargerPower() {
    final description = chargerSpot.chargerDevices
        .map((device) => "${device.power}kW")
        .join("、");
    return _buildInfoRow(
      icon: Icons.bolt,
      title: "充電出力",
      description: description,
    );
  }

  Widget _buildBusinessHours() {
    const icon = Icons.watch_later_outlined;
    final todayServiceTimes = chargerSpot.chargerSpotServiceTimes
        .where((time) => time.today)
        .toList();

    if (todayServiceTimes.isEmpty) {
      return _buildInfoRow(
        icon: icon,
        title: "営業時間外",
        description: "-",
        titleColor: disableTextColor,
      );
    } else {
      final businessHoursText = todayServiceTimes
          .map((time) => "${time.startTime} - ${time.endTime}")
          .join("、");
      return _buildInfoRow(
        icon: icon,
        title: "営業中",
        description: businessHoursText,
        titleColor: primaryColor,
      );
    }
  }

  Widget _buildRegularHoliday() {
    final regularHolidayText = chargerSpot.chargerSpotServiceTimes
        .where((time) =>
            time.businessDay == APIChargerSpotServiceTimeBusinessDayEnum.no)
        .map((time) => time.day.value)
        .join("、"); // TODO: APIからは英語で返却されるので要マッピング

    return _buildInfoRow(
      icon: Icons.today,
      title: '定休日',
      description: regularHolidayText,
    );
  }

  Widget _buildMapApp() {
    // TODO: Open Map App
    return const Padding(
      padding: EdgeInsets.only(left: 2),
      child: Row(
        children: [
          Text(
            '地図アプリで経路を見る',
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: primaryColor,
              color: primaryColor,
            ),
          ),
          SizedBox(width: 4),
          Icon(Icons.filter_none, size: 16),
        ],
      ),
    );
  }
}
