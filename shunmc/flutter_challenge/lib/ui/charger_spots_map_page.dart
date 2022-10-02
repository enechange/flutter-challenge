import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class ChargerSpotsMapPage extends StatelessWidget {
  const ChargerSpotsMapPage(this.chargerSpot, this.chargerSpots, {super.key});

  final List<ChargerSpot> chargerSpots;
  final ChargerSpot chargerSpot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(chargerSpot.name),
      ),
    );
  }
}
