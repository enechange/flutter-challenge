import 'dart:async';

import 'package:challenge_oga/component/charger_spot_card.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/api.dart';

class ChargerSpotScreen extends StatefulWidget {
  const ChargerSpotScreen({Key? key}) : super(key: key);

  @override
  ChargerSpotScreenState createState() => ChargerSpotScreenState();
}

class ChargerSpotScreenState extends State<ChargerSpotScreen> {
  Position? currentPosition;
  late GoogleMapController _mapController;
  final PageController _pageController = PageController();
  var _chargerSpots = <APIChargerSpot>[];

  @override
  void initState() {
    super.initState();
  }

  Future<CameraPosition> _initCurrentLocation() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      return const CameraPosition(target: LatLng(0, 0), zoom: 14);
    }

    if (await Geolocator.checkPermission() == LocationPermission.denied &&
        await Geolocator.requestPermission() == LocationPermission.denied) {
      return const CameraPosition(target: LatLng(0, 0), zoom: 14);
    }

    return Geolocator.getCurrentPosition()
        .then((value) => CameraPosition(
            target: LatLng(value.latitude, value.longitude), zoom: 14))
        .onError((error, stackTrace) =>
            const CameraPosition(target: LatLng(0, 0), zoom: 14));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [_buildGoogleMap(), _buildChargeSpotSection()],
        ),
      ),
    );
  }

  Widget _buildGoogleMap() {
    const initialCameraPosition = CameraPosition(
        target: LatLng(35.684176959761444, 139.76737847182142), zoom: 17);

    return FutureBuilder<CameraPosition>(
      future: _initCurrentLocation(),
      builder:
          (BuildContext context, AsyncSnapshot<CameraPosition> cameraPosition) {
        if (!cameraPosition.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                _mapController = controller;
              },
              myLocationEnabled: true,
              onTap: (LatLng latLang) {
                debugPrint('onTap: $latLang');
              },
              onCameraIdle: () async {
                debugPrint('onCameraIdle');
                final visiblePosition = await _mapController.getVisibleRegion();

                debugPrint('Request ChargerSpotsApi');
                final result = await ChargerSpotsApi().chargerSpots(
                    const String.fromEnvironment("EVENE_NATIVE_API_TOKEN"),
                    swLat: visiblePosition.southwest.latitude.toString(),
                    swLng: visiblePosition.southwest.longitude.toString(),
                    neLat: visiblePosition.northeast.latitude.toString(),
                    neLng: visiblePosition.northeast.longitude.toString());

                if (result?.status == APIResponseStatusEnum.ok) {
                  setState(() {
                    debugPrint('chargerSpots: ${result?.chargerSpots.length}');
                    _chargerSpots = result?.chargerSpots ?? [];
                  });
                } else {
                  debugPrint('error: chargerSpots');
                }
              },
              onCameraMoveStarted: () {
                // debugPrint('onCameraMoveStarted');
              },
              onCameraMove: (CameraPosition cameraPosition) {
                // debugPrint('onCameraMove: $cameraPosition');
              },
              markers: _chargerSpots
                  .map((chargerSpot) => Marker(
                      markerId: MarkerId(chargerSpot.uuid.toString()),
                      position: LatLng(chargerSpot.latitude.toDouble(),
                          chargerSpot.longitude.toDouble()),
                      onTap: () {
                        final index = _chargerSpots.indexOf(chargerSpot);
                        _pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      },
                      infoWindow: InfoWindow(
                          title: chargerSpot.name,
                          snippet: chargerSpot.address)))
                  .toSet(),
              initialCameraPosition:
                  initialCameraPosition /*cameraPosition.data!*/); // 東京駅エリアのみデータがあるようなので、テスト用に固定
        }
      },
    );
  }

  Widget _buildChargeSpotSection() {
    return SizedBox(
      height: 272,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: PageView.builder(
          itemCount: _chargerSpots.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            final chargerSpot = _chargerSpots[index];
            return ChargerSpotCard(
              thumbnailUrls: /*chargerSpot.images.map((e) => $e.url)*/ const [
                ""
              ], // TODO
              name: chargerSpot.name,
              chargerCount: 0,
              output: "1234",
              serviceTimes: chargerSpot.chargerSpotServiceTimes,
              onPressed: () {
                debugPrint('onPressed: ${chargerSpot.name}');
              },
            );
          },
          onPageChanged: (int index) async {
            final selectedChargerSpot = _chargerSpots[index];
            final zoomLevel = await _mapController.getZoomLevel();

            _mapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(selectedChargerSpot.latitude.toDouble(),
                      selectedChargerSpot.longitude.toDouble()),
                  zoom: zoomLevel,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
