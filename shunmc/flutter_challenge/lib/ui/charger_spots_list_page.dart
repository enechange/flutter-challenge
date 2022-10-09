import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spots_repository.dart';
import 'package:flutter_challenge/ui/charget_spot_card.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChargerSpotsListPage extends StatelessWidget {
  const ChargerSpotsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = ChargerSpotsRepository();
    final latLngBounds = LatLngBounds(
      southwest: const LatLng(35.683331703634124, 139.7657155055581),
      northeast: const LatLng(35.686849507072736, 139.77340835691592),
    );
    final response = repository.getChargerSpots(latLngBounds);
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
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: Center(
                child: Column(
                  children: snapshot.data!
                      .map(
                        (e) => ChargerSpotCard(
                          e,
                          onTap: () => context.go('/map', extra: {
                            'chargerSpot': e,
                            'chargerSpots': snapshot.data!,
                          }),
                          key: ValueKey(e.uuid),
                        ),
                      )
                      .toList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
