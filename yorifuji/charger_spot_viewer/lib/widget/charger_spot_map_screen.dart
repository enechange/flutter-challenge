import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:charger_spot_viewer/model/charger_spot_model.dart';
import 'package:charger_spot_viewer/widget/charger_spot_card_widget.dart';

const appBarTitle = 'Charger Spot Viewer';
const defaultZoomLevel = 15.0;

class ChargerSpotMapScreen extends StatefulWidget {
  const ChargerSpotMapScreen(
      {Key? key, required this.chargerSpot, required this.chargerSpots})
      : super(key: key);

  final ChargerSpot chargerSpot;
  final List<ChargerSpot> chargerSpots;

  @override
  State<ChargerSpotMapScreen> createState() => _ChargerSpotMapScreen();
}

class _ChargerSpotMapScreen extends State<ChargerSpotMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
      ),
      body: Stack(children: [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
              target: LatLng(
                  widget.chargerSpot.latitude!, widget.chargerSpot.longitude!),
              zoom: defaultZoomLevel),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            _createMarker();
          },
          markers: _markers,
          myLocationEnabled: true,
          myLocationButtonEnabled: false, // カードと重なってしまうため
        ),
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: _createFloatingCards())))
        ]),
      ]),
    );
  }

  void _createMarker() {
    setState(() {
      _markers = widget.chargerSpots
          .map((_chargerSpot) => Marker(
              onTap: () async {
                final GoogleMapController controller = await _controller.future;
                final position = CameraPosition(
                    target:
                        LatLng(_chargerSpot.latitude!, _chargerSpot.longitude!),
                    zoom: defaultZoomLevel);
                controller
                    .animateCamera(CameraUpdate.newCameraPosition(position));
              },
              markerId: MarkerId(_chargerSpot.name!),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueGreen),
              position: LatLng(_chargerSpot.latitude!, _chargerSpot.longitude!),
              infoWindow: InfoWindow(
                  title: _chargerSpot.name!,
                  snippet:
                      '利用可能台数：${_chargerSpot.chargerDevices!.length.toString()}')))
          .toSet();
    });
  }

  List<Widget> _createFloatingCards() {
    return widget.chargerSpots
        .map((_chargerSpot) => ChargerSpotCard(
            chargerSpot: _chargerSpot,
            onTapFunc: () async {
              final GoogleMapController controller = await _controller.future;
              final position = CameraPosition(
                  target:
                      LatLng(_chargerSpot.latitude!, _chargerSpot.longitude!),
                  zoom: defaultZoomLevel);
              controller
                  .animateCamera(CameraUpdate.newCameraPosition(position));
            }))
        .toList();
  }
}
