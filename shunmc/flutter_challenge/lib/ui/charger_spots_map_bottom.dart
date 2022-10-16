import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spots_repository.dart';
import 'package:flutter_challenge/ui/charger_spots_page_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChargerSpotsMapBottom extends ConsumerWidget {
  const ChargerSpotsMapBottom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = PageController();
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
        return ChargerSpotsPageView(
          data,
          controller: controller,
        );
      },
    );
  }
}
