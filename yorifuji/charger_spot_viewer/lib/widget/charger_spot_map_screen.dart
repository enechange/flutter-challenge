import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:charger_spot_viewer/model/charger_spot_model.dart';
import 'package:charger_spot_viewer/widget/charger_spot_card_widget.dart';

const appBarTitle = 'Charger Spot Viewer';
const defaultZoomLevel = 15.0;

class ChargerSpotMapScreen extends StatefulWidget {
  const ChargerSpotMapScreen({Key? key, required this.chargerSpot})
      : super(key: key);

  final ChargerSpot chargerSpot;

  @override
  State<ChargerSpotMapScreen> createState() => _ChargerSpotMapScreen();
}

class _ChargerSpotMapScreen extends State<ChargerSpotMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  final Set<Marker> _markers = {};

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
          myLocationButtonEnabled: true,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            buildChargerSpotCard(
              chargerSpot: widget.chargerSpot,
              onTapFunc: () async {
                final GoogleMapController controller = await _controller.future;
                final position = CameraPosition(
                    target: LatLng(widget.chargerSpot.latitude!,
                        widget.chargerSpot.longitude!),
                    zoom: defaultZoomLevel);
                controller
                    .animateCamera(CameraUpdate.newCameraPosition(position));
              },
            )
          ],
        )
      ]),
    );
  }

  void _createMarker() {
    setState(() {
      _markers.add(Marker(
          onTap: () async {
            final GoogleMapController controller = await _controller.future;
            final visibleRegion = await controller.getVisibleRegion();
            print(visibleRegion.northeast);
            print(visibleRegion.southwest);
          },
          markerId: MarkerId(widget.chargerSpot.name!),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: LatLng(
              widget.chargerSpot.latitude!, widget.chargerSpot.longitude!),
          infoWindow: InfoWindow(
              title: widget.chargerSpot.name!,
              snippet:
                  '利用可能台数：${widget.chargerSpot.chargerDevices!.length.toString()}')));
    });
  }
}
