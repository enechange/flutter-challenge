import 'dart:async';

import 'package:challenge_oga/component/charger_spot_card.dart';
import 'package:challenge_oga/screen/charger_spot/charger_spot_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/api.dart';
import 'package:provider/provider.dart';

class ChargerSpotScreen extends StatelessWidget {
  const ChargerSpotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChargerSpotViewModel(),
        )
      ],
      child: const _ChargerSpotScreen(),
    );
  }
}

class _ChargerSpotScreen extends StatefulWidget {
  const _ChargerSpotScreen({Key? key}) : super(key: key);

  @override
  _ChargerSpotScreenState createState() => _ChargerSpotScreenState();
}

class _ChargerSpotScreenState extends State<_ChargerSpotScreen> {
  Position? currentPosition;
  late GoogleMapController _mapController;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ChargerSpotViewModel>(context, listen: false)
          .fetchInitialCurrentLocation();
    });
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
    // 東京駅付近
    const initialCameraPosition = CameraPosition(
        target: LatLng(35.684176959761444, 139.76737847182142), zoom: 17);
    final chargerSpots = context
        .select((ChargerSpotViewModel viewmodel) => viewmodel.chargerSpots);

    return FutureBuilder<CameraPosition>(
      future: _initCurrentLocation(),
      builder: (context, snapshot) {
        // if (!snapshot.hasData) {
        //   return const Center(child: CircularProgressIndicator());
        // }

        return GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            _mapController = controller;
          },
          myLocationEnabled: true,
          onCameraIdle: _onCameraIdle,
          onCameraMoveStarted: () {
            debugPrint('onCameraMoveStarted');
          },
          markers: _buildMarkers(chargerSpots),
          initialCameraPosition:
              initialCameraPosition /*snapshot.data ?? initialCameraPosition*/,
        ); // TODO: 東京駅エリアのみデータがあるようなので、テスト用に固定
      },
    );
  }

  Future<void> _onCameraIdle() async {
    debugPrint('onCameraIdle');
    final visibleRegion = await _mapController.getVisibleRegion();
    if (!context.mounted) return;
    context.read<ChargerSpotViewModel>().fetchChargerSpots(visibleRegion);
  }

  Set<Marker> _buildMarkers(List<APIChargerSpot> chargerSpots) {
    return chargerSpots.map((chargerSpot) {
      return Marker(
        markerId: MarkerId(chargerSpot.uuid.toString()),
        position: LatLng(
            chargerSpot.latitude.toDouble(), chargerSpot.longitude.toDouble()),
        onTap: () {
          final index = chargerSpots.indexOf(chargerSpot);
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
        infoWindow: InfoWindow(
          title: chargerSpot.name,
          snippet: chargerSpot.address,
        ),
      );
    }).toSet();
  }

  Widget _buildChargeSpotSection() {
    final chargerSpots = context
        .select((ChargerSpotViewModel viewmodel) => viewmodel.chargerSpots);

    return SizedBox(
      height: 272,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: PageView.builder(
          itemCount: chargerSpots.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return _buildChargerSpotCard(chargerSpots[index]);
          },
          onPageChanged: (int index) => _onPageChanged(chargerSpots, index),
        ),
      ),
    );
  }

  Widget _buildChargerSpotCard(APIChargerSpot chargerSpot) {
    return ChargerSpotCard(
      thumbnailUrls: /*chargerSpot.images.map((e) => e.url).toList()*/ const [
        ""
      ],
      name: chargerSpot.name,
      chargerCount: 0,
      output: "1234",
      serviceTimes: chargerSpot.chargerSpotServiceTimes,
      onPressed: () {
        debugPrint('onPressed: ${chargerSpot.name}');
      },
    );
  }

  Future<void> _onPageChanged(
      List<APIChargerSpot> chargerSpots, int index) async {
    final selectedChargerSpot = chargerSpots[index];
    await moveCameraToChargerSpot(selectedChargerSpot);
  }

  Future<void> moveCameraToChargerSpot(
      APIChargerSpot selectedChargerSpot) async {
    final zoomLevel = await _mapController.getZoomLevel();
    final cameraPosition = CameraPosition(
      target: LatLng(
        selectedChargerSpot.latitude.toDouble(),
        selectedChargerSpot.longitude.toDouble(),
      ),
      zoom: zoomLevel,
    );

    _mapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }
}
