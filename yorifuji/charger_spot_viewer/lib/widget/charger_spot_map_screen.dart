import 'dart:async';
import 'package:charger_spot_viewer/model/charger_spot_model_utils.dart';
import 'package:flutter/material.dart';
import 'package:charger_spot_viewer/model/charger_spot_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
          children: [_buildChargerSpotCard(widget.chargerSpot)],
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

  Widget _buildChargerSpotCard(ChargerSpot chargerSpot) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        elevation: 10,
        child: InkWell(
            onTap: () async {
              final GoogleMapController controller = await _controller.future;
              final position = CameraPosition(
                  target: LatLng(widget.chargerSpot.latitude!,
                      widget.chargerSpot.longitude!),
                  zoom: defaultZoomLevel);
              controller
                  .animateCamera(CameraUpdate.newCameraPosition(position));
            },
            child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(chargerSpot.name!,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.power,
                                        color: Colors.orange, size: 16.0),
                                    const SizedBox(width: 5),
                                    const SizedBox(
                                        width: 100, child: Text("利用可能台数")),
                                    SizedBox(
                                        width: 100,
                                        child: Text(chargerSpot
                                            .chargerDevices!.length
                                            .toString())),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.bolt,
                                        color: Colors.orange, size: 16.0),
                                    const SizedBox(width: 5),
                                    const SizedBox(
                                        width: 100, child: Text("充電出力")),
                                    SizedBox(
                                        width: 100,
                                        child: Text(getTotalPowerkW(
                                            chargerSpot: chargerSpot)))
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.schedule,
                                        color: Colors.orange, size: 16.0),
                                    const SizedBox(width: 5),
                                    const SizedBox(
                                        width: 100, child: Text("営業時間")),
                                    SizedBox(
                                        width: 100,
                                        child: Text(getTodaysBussinessHour(
                                            chargerSpot: chargerSpot)))
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.today,
                                        color: Colors.orange, size: 16.0),
                                    const SizedBox(width: 5),
                                    const SizedBox(
                                        width: 100, child: Text("定休日")),
                                    SizedBox(
                                        width: 100,
                                        child: Text(getClosedDay(
                                            chargerSpot: chargerSpot)))
                                  ],
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset('images/spot.png')),
                                ),
                              ])
                        ])),
                  ],
                ))));
  }
}
