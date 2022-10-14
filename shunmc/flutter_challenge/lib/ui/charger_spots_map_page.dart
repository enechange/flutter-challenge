import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spots_repository.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:flutter_challenge/location_utility.dart';
import 'package:flutter_challenge/ui/bitmap_descriptor_utility.dart';
import 'package:flutter_challenge/ui/charger_spots_list_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
          final keys = {for (var e in data!) e: GlobalKey()};

          final image = Assets.images.marker.image();

          markerWidgets.value = _buildMarkerWidget(data, keys, image);

          // マーカーの画像が出ない事があるので、一旦長めのディレイを入れてみる
          await Future.delayed(const Duration(milliseconds: 1000));

          markers.value = await _buildMarkers(
            data,
            keys,
            (spot) => selectedSpot.value = spot,
          );
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
                                  await LocationUtility.getCurrentPosition(),
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
                      ref.watch(chargerSpotsProvider).when(
                            loading: () => const Center(
                                child: CircularProgressIndicator()),
                            error: (error, stackTrace) =>
                                Text('error:$error,stackTrace:$stackTrace'),
                            data: (data) => ChargerSpotsListView(
                              data!,
                              scrollDirection: Axis.horizontal,
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
                      final position = LocationUtility.getBounds(
                        currentPosition.target,
                        currentPosition.zoom,
                      );
                      ref.read(positionProvider.notifier).state = position;
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

  List<Widget> _buildMarkerWidget(
    Iterable<ChargerSpot> spots,
    Map<ChargerSpot, GlobalKey<State<StatefulWidget>>> keys,
    Image image,
  ) {
    final markerWidgets = <Widget>[];
    for (final spot in spots) {
      final widget = RepaintBoundary(
        key: keys[spot],
        child: SizedBox(
          width: 44,
          height: 63,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              image,
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
      markerWidgets.add(widget);
    }
    return markerWidgets;
  }

  Future<Set<Marker>> _buildMarkers(
    Iterable<ChargerSpot> spots,
    Map<ChargerSpot, GlobalKey<State<StatefulWidget>>> keys,
    Function(ChargerSpot) onTap,
  ) async {
    final markers = <Marker>{};
    for (final spot in spots) {
      final marker = Marker(
        markerId: MarkerId(spot.uuid),
        position: LatLng(spot.latitude.toDouble(), spot.longitude.toDouble()),
        icon: await BitmapDescriptorUtility.fromWidget(keys[spot]!),
        anchor: const Offset(0.5, 0.9315),
        onTap: () => onTap,
      );
      markers.add(marker);
    }
    return markers;
  }
}
