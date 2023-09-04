import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yosken_challenge1/component/card.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yosken_challenge1/component/card_no_result.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';

class SpotInfoListView extends ConsumerWidget {
  const SpotInfoListView(this.googleController, {Key? key}) : super(key: key);
  final GoogleMapController googleController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapController = googleController;

    final asyncValue = ref.watch(chargerSpotsFutureProvider);

    return asyncValue.when(
        data: (value) {
          if (value.charger_spots!.isEmpty) {
            return makeNoResultCard();
          }
          return SizedBox(
            height: double.infinity,
            child: DraggableScrollableSheet(
              initialChildSize: draggableScrollableSheetFraction,
              minChildSize: 0,
              maxChildSize: draggableScrollableSheetFraction,
              builder: (context, scrollController) => ListView.builder(
                controller: scrollController,
                itemCount: value.charger_spots!.length,
                itemBuilder: (BuildContext context, int index) {
                  final spotData = value.charger_spots![index];
                  return makeCard(spotData, index, context, mapController);
                },
              ),
            ),
          );
        },
        error: (error, stack) => searchErrorWidgetForListView,
        loading: () => loadingIndicatorForListView);
  }
}
