import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spots_repository.dart';
import 'package:flutter_challenge/ui/charget_spot_card.dart';

class ChargerSpotsListPage extends StatelessWidget {
  const ChargerSpotsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = ChargerSpotsRepository();
    final response = repository.getChargerSpots(
      swLat: '35.683331703634124',
      swLng: '139.7657155055581',
      neLat: '35.686849507072736',
      neLng: '139.77340835691592',
    );
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: response,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.data == null) {
              return const Text('error');
            }
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 22),
              child: Column(
                children: snapshot.data!
                    .map((e) => ChargerSpotCard(e, key: ValueKey(e.uuid)))
                    .toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
