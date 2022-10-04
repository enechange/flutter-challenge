import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/openapi.dart';

class ChargerSpotsMapPage extends StatelessWidget {
  const ChargerSpotsMapPage(this.chargerSpot, this.chargerSpots, {super.key});

  final List<ChargerSpot> chargerSpots;
  final ChargerSpot chargerSpot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            chargerSpot.latitude.toDouble(),
            chargerSpot.longitude.toDouble(),
          ),
          zoom: 16,
        ),
        markers: chargerSpots
            .map(
              (e) => Marker(
                markerId: MarkerId(e.uuid),
                position: LatLng(e.latitude.toDouble(), e.longitude.toDouble()),
                infoWindow: InfoWindow(title: '${e.chargerDevices?.length}'),
                onTap: () {},
              ),
            )
            .toSet(),
        mapToolbarEnabled: false,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
      ),
    );
  }
}
