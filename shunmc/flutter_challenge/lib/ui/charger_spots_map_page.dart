import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spots_repository.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:flutter_challenge/location_utility.dart';
import 'package:flutter_challenge/ui/bitmap_descriptor_utility.dart';
import 'package:flutter_challenge/ui/charget_spot_card.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class ChargerSpotsMapPage extends HookConsumerWidget {
  const ChargerSpotsMapPage(this.chargerSpot, {super.key});

  final ChargerSpot chargerSpot;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSpot = useState(chargerSpot);
    final markers = useState(<Marker>{});
    final markerWidgets = useState(<Widget>[]);
    final buttonDisplayed = useState(false);
    final provider = ref.read(chargerSpotsProvider);
    var currentPosition = CameraPosition(
      target: LatLng(
        chargerSpot.latitude.toDouble(),
        chargerSpot.longitude.toDouble(),
      ),
      zoom: 16,
    );
    GoogleMapController? mapController;

    void createMarker() {
      provider.whenData(
        (data) async {
          final keys = <ChargerSpot, GlobalKey<State<StatefulWidget>>>{};
          final tmpMarkerWidgets = <Widget>[];
          for (final spot in data!) {
            final key = GlobalKey();
            keys.addEntries([MapEntry(spot, key)]);
            final widget = RepaintBoundary(
              key: key,
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
                        (chargerSpot.chargerDevices?.length ?? 0).toString(),
                      ),
                    ),
                  ],
                ),
              ),
            );
            tmpMarkerWidgets.add(widget);
          }
          markerWidgets.value = tmpMarkerWidgets;

          // マーカーの画像が出ない事があるので、一旦長めのディレイを入れてみる
          await Future.delayed(const Duration(milliseconds: 1000));

          final tmpMarkers = <Marker>{};
          for (final spot in data) {
            final marker = Marker(
              markerId: MarkerId(spot.uuid),
              position:
                  LatLng(spot.latitude.toDouble(), spot.longitude.toDouble()),
              icon: await BitmapDescriptorUtility.fromWidget(keys[spot]!),
              anchor: const Offset(0.5, 0.9315),
              onTap: () => selectedSpot.value = spot,
            );
            tmpMarkers.add(marker);
          }
          markers.value = tmpMarkers;
        },
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: currentPosition,
            onMapCreated: (controller) {
              mapController = controller;
              createMarker();
            },
            markers: markers.value,
            mapToolbarEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            onCameraMove: (position) {
              currentPosition = position;
              buttonDisplayed.value = true;
            },
          ),
          SafeArea(
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        alignment: Alignment.centerRight,
                        child: FloatingActionButton(
                          onPressed: () async {
                            try {
                              mapController?.animateCamera(
                                CameraUpdate.newLatLngZoom(
                                  await LocationUtility.determinePosition(),
                                  16,
                                ),
                              );
                            } catch (e) {
                              // 何かしらの例外処理を行う
                            }
                          },
                          child: Assets.images.myLocation.image(),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ChargerSpotCard(selectedSpot.value),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (buttonDisplayed.value)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.9, 62),
                      foregroundColor: const Color(0xff55c500),
                      backgroundColor: const Color(0xfff2ffe8),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () async {
                      final diff = 256 / pow(2, currentPosition.zoom);
                      ref.read(positionProvider.notifier).state = LatLngBounds(
                        southwest: LatLng(
                          currentPosition.target.latitude - diff,
                          currentPosition.target.longitude - diff,
                        ),
                        northeast: LatLng(
                          currentPosition.target.latitude + diff,
                          currentPosition.target.longitude + diff,
                        ),
                      );
                      createMarker();
                      buttonDisplayed.value = false;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'このエリアでポートを検索',
                        ),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(-400, 0), // 画面外に描画
            child: Stack(
              children: markerWidgets.value,
            ),
          ),
        ],
      ),
    );
  }
}
