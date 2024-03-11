import 'dart:async';

import 'package:challenge_oga/component/charger_spot_card.dart';
import 'package:challenge_oga/screen/charger_spot/charger_spot_viewmodel.dart';
import 'package:flutter/material.dart';
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
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ChargerSpotViewModel>().fetchInitialCurrentLocation();
    });
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
    final uisState =
        context.select((ChargerSpotViewModel viewmodel) => viewmodel.uiState);
    final chargerSpots = context
        .select((ChargerSpotViewModel viewmodel) => viewmodel.chargerSpots);
    final markers =
        context.select((ChargerSpotViewModel viewmodel) => viewmodel.markers);

    switch (uisState) {
      case Idle():
        return const SizedBox();
      case Initializing():
        return const Center(child: CircularProgressIndicator());
      case Initialized():
      case Loading():
      case Success():
      case Error():
        return GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            context
                .read<ChargerSpotViewModel>()
                .updateGoogleMapController(controller);
          },
          myLocationEnabled: true,
          onCameraIdle: _onCameraIdle,
          onCameraMoveStarted: () {
            debugPrint('onCameraMoveStarted');
          },
          markers: markers,
          initialCameraPosition:
              initialCameraPosition /*snapshot.data ?? initialCameraPosition*/,
        ); // TODO: 東京駅エリアのみデータがあるようなので、テスト用に固定
    }
  }

  Future<void> _onCameraIdle() async {
    debugPrint('onCameraIdle');
    final visibleRegion = await context
        .read<ChargerSpotViewModel>()
        .mapController
        .getVisibleRegion();
    if (!context.mounted) return;
    context.read<ChargerSpotViewModel>().fetchChargerSpots(visibleRegion);
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
          controller: context.read<ChargerSpotViewModel>().pageController,
          itemBuilder: (BuildContext context, int index) {
            return _buildChargerSpotCard(chargerSpots[index]);
          },
          onPageChanged: (int index) async {
            final selectedChargerSpot = chargerSpots[index];
            await _moveCameraToChargerSpot(selectedChargerSpot);
          },
        ),
      ),
    );
  }

  Widget _buildChargerSpotCard(APIChargerSpot chargerSpot) {
    return ChargerSpotCard(
      chargerSpot: chargerSpot,
      onPressed: () {
        debugPrint('onPressed: ${chargerSpot.name}');
      },
    );
  }

  Future<void> _moveCameraToChargerSpot(
      APIChargerSpot selectedChargerSpot) async {
    final zoomLevel =
        await context.read<ChargerSpotViewModel>().mapController.getZoomLevel();
    final cameraPosition = CameraPosition(
      target: LatLng(
        selectedChargerSpot.latitude.toDouble(),
        selectedChargerSpot.longitude.toDouble(),
      ),
      zoom: zoomLevel,
    );

    if (!mounted) return;

    context
        .read<ChargerSpotViewModel>()
        .mapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }
}
