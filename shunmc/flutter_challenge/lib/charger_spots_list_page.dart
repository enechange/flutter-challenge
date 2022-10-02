import 'package:flutter/material.dart';
import 'package:flutter_challenge/charget_spot_card.dart';

class ChargerSpotsListPage extends StatelessWidget {
  const ChargerSpotsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: Column(
            children: [
              ChargerSpotCard(),
            ],
          ),
        ),
      ),
    );
  }
}
