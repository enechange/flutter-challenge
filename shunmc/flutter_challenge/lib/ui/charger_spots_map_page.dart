import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spot_utility.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:flutter_challenge/ui/charget_spot_card.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/openapi.dart';

class ChargerSpotsMapPage extends HookWidget {
  const ChargerSpotsMapPage(this.chargerSpot, this.chargerSpots, {super.key});

  final ChargerSpot chargerSpot;
  final Iterable<ChargerSpot> chargerSpots;

  @override
  Widget build(BuildContext context) {
    final selectedSpot = useState(chargerSpot);
    GoogleMapController? mapController;
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(
                chargerSpot.latitude.toDouble(),
                chargerSpot.longitude.toDouble(),
              ),
              zoom: 16,
            ),
            onMapCreated: (controller) => mapController = controller,
            markers: chargerSpots
                .map(
                  (e) => Marker(
                    markerId: MarkerId(e.uuid),
                    position:
                        LatLng(e.latitude.toDouble(), e.longitude.toDouble()),
                    infoWindow: InfoWindow(
                        title: ChargerSpotUtility.getAvailableSpotCount(
                                e.chargerDevices ?? [])
                            .toString()),
                    onTap: () => selectedSpot.value = e,
                  ),
                )
                .toSet(),
            mapToolbarEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            zoomControlsEnabled: false,
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () async {
                      try {
                        mapController?.animateCamera(
                          CameraUpdate.newLatLngZoom(
                            await _determinePosition(),
                            16,
                          ),
                        );
                      } catch (e) {
                        // 何かしらの例外処理を行う
                      }
                    },
                    child: Assets.images.myLocation.image(),
                  ),
                  ChargerSpotCard(selectedSpot.value),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<LatLng> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    final position = await Geolocator.getCurrentPosition();
    return LatLng(position.latitude, position.longitude);
  }
}
