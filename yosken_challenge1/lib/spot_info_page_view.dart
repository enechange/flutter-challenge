import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yosken_challenge1/constant/others.dart';
import 'package:yosken_challenge1/model/camera_move.dart';
import 'package:yosken_challenge1/model/fetch_my_location.dart';
import 'package:yosken_challenge1/model/show_list_view.dart';
import 'package:yosken_challenge1/component/card_list.dart';
import 'package:yosken_challenge1/component/marker.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';

class SpotInfoPageView extends ConsumerWidget {
  const SpotInfoPageView(
      this.myIcon, this.googleMapController, this.markerController,
      {Key? key})
      : super(key: key);
  final GoogleMapController googleMapController;
  final StreamController<Set<Marker>> markerController;
  final BitmapDescriptor myIcon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapIcon = myIcon;
    final mapController = googleMapController;
    final myMarkerController = markerController;
    final range = ref.read(rangeStateProvider);
    final asyncValue = ref.watch(chargerSpotsFutureProvider);
    final myPosition = ref.watch(myPositionProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: marginForSearchButton,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: searchButtonSize,
              height: myLocationButtonSize,
              child: ElevatedButton(
                  style: searchButtonStyle,
                  onPressed: () {
                    moveCamera(mapController, myPosition);
                    ref.read(searchPositionProvider.notifier).state = makeSwAndNeLatLng(range, myPosition);
                  },
                  child: searchButtonWidget),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: myLocationButtonPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: showListButtonHeight,
                width: showListButtonWidth,
                child: ElevatedButton(
                  style: showListButtonStyle,
                  onPressed: () {
                    showListView(context, pageController, mapController);
                  },
                  child: showListButtonRow
                ),
              ),
              betweenListButtonAndMyLocationSizedBox,
              ElevatedButton(
                onPressed: () {
                  moveCamera(mapController, myPosition);
                },
                style: myLocationButtonStyle,
                child: myLocationIconWidget,
              ),
            ],
          ),
        ),
        asyncValue.when(
            data: (value) {
              // MapPageState().updateMarkers(value);

              final markers = makeMarker(value, mapIcon);
              myMarkerController.sink.add(markers);
              return Padding(
                padding: const EdgeInsets.only(bottom: marginPageViewFromB),
                child: SizedBox(
                  height: cardHeight,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (int index) {
                      final selectSpot = value.charger_spots!.elementAt(index);
                      moveCameraForPageChanged(mapController, selectSpot);
                    },
                    children: makeCardListForPageView(value),
                  ),
                ),
              );
            },
            error: (error, stack) => Text('$errorText: $error'),
            loading: () => loadingIndicatorForPageView),
      ],
    );
  }
}