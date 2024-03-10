import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/api.dart';

class ChargerSpotScreen extends StatefulWidget {
  const ChargerSpotScreen({Key? key}) : super(key: key);

  @override
  ChargerSpotScreenState createState() => ChargerSpotScreenState();
}

class ChargerSpotScreenState extends State<ChargerSpotScreen> {
  late GoogleMapController _mapController;
  final PageController _pageController = PageController();
  final LatLng _center = const LatLng(45.521563, -122.677433);
  final chargerSpots = <APIChargerSpot>[];

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: Column(
          children: [_buildGoogleMap(), _buildChargeSpotSection()],
        ),
      ),
    );
  }

  Widget _buildGoogleMap() {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
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
