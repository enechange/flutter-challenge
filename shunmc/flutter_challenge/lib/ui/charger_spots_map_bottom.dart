import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spots_repository.dart';
import 'package:flutter_challenge/ui/charger_spots_page_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChargerSpotsMapBottom extends ConsumerWidget {
  const ChargerSpotsMapBottom({this.onPageChanged, super.key});

  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chargerSpots = ref.watch(chargerSpotsProvider);
    return chargerSpots.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('error:$error,stackTrace:$stackTrace'),
      data: (data) {
        if (data == null || data.isEmpty) {
          return const SizedBox(
            height: 35,
          );
        }
        int initialPage = 0;
        final selectedSpot = ref.watch(selectedChargerSpotProvider);
        if (selectedSpot != null) {
          initialPage = data.toList().indexOf(selectedSpot);
        }
        final controller = PageController(initialPage: initialPage);
        ref.listen(selectedChargerSpotProvider, (previous, next) {
          if (next == null) return;
          controller.animateToPage(
            data.toList().indexOf(next),
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
          );
        });
        return ChargerSpotsPageView(
          data,
          controller: controller,
          onPageChanged: onPageChanged,
        );
      },
    );
  }
}
