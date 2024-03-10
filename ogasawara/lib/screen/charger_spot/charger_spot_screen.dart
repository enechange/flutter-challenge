import 'dart:async';

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
  late StreamSubscription<Position> positionStream;
  final PageController _pageController = PageController();
  final LatLng _center = const LatLng(45.521563, -122.677433);
  final chargerSpots = <APIChargerSpot>[];

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

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _buildGoogleMap(), /*_buildChargeSpotSection()*/
          ],
        ),
      ),
    );
  }

  Widget _buildGoogleMap() {
    return FutureBuilder<CameraPosition>(
      future: _initCurrentLocation(),
      builder:
          (BuildContext context, AsyncSnapshot<CameraPosition> cameraPosition) {
        debugPrint("Camera position: $cameraPosition");

        if (!cameraPosition.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return GoogleMap(
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
              initialCameraPosition: cameraPosition.data!);
        }
      },
    );
  }

  Widget _buildChargeSpotSection() {
    return PageView(
      onPageChanged: (int index) async {
        final selectedChargerSpot = chargerSpots[index];
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
      controller: _pageController,
      children: const [Text("")],
    );
  }
}
