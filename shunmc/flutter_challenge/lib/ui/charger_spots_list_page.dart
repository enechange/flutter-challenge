import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spot_utility.dart';
import 'package:flutter_challenge/data/charger_spots_repository.dart';
import 'package:flutter_challenge/ui/charger_spots_list_view.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChargerSpotsListPage extends ConsumerWidget {
  const ChargerSpotsListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(chargerSpotsProvider);
    return Scaffold(
      body: SafeArea(
        child: provider.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) =>
              Text('error:$error,stackTrace:$stackTrace'),
          data: (data) => ChargerSpotsListView(
            data!,
            onTap: (e) {
              ref.read(selectedChargerSpotProvider.notifier).state = e;
              ref.read(positionProvider.notifier).state =
                  ChargerSpotUtility.getLatLng(e);
              context.go('/map');
            },
          ),
        ),
      ),
    );
  }
}
