import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spot_utility.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:flutter_challenge/ui/bitmap_descriptor_utility.dart';
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
    final markers = useState(<Marker>{});
    GoogleMapController? mapController;

    final keys = chargerSpots.toList().asMap().map(
          (key, value) => MapEntry(value, GlobalKey()),
        );

    Future<void> generateMarker() async {
      for (final spot in chargerSpots) {
        final marker = Marker(
          markerId: MarkerId(spot.uuid),
          position: LatLng(spot.latitude.toDouble(), spot.longitude.toDouble()),
          icon: await BitmapDescriptorUtility.fromWidget(keys[spot]!),
          anchor: const Offset(0.5, 0.9315),
          onTap: () => selectedSpot.value = spot,
        );
        markers.value.add(marker);
      }
      // valueへのaddだと通知が飛ばないため、妥協でnotifyListernersを呼ぶ
      markers.notifyListeners();
    }

    generateMarker();

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
            markers: markers.value,
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
          Transform.translate(
            offset: const Offset(-400, 0), // 画面外に描画
            child: Stack(
              children: chargerSpots
                  .map(
                    (e) => RepaintBoundary(
                      key: keys[e],
                      child: SizedBox(
                        width: 44,
                        height: 63,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Assets.images.marker.image(),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                ChargerSpotUtility.getAvailableSpotCount(
                                        e.chargerDevices ?? [])
                                    .toString(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
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
