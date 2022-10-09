import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spots_repository.dart';
import 'package:flutter_challenge/ui/charget_spot_card.dart';
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
          data: (data) => SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 22),
            child: Center(
              child: Column(
                children: data!
                    .map(
                      (e) => ChargerSpotCard(
                        e,
                        onTap: () => context.go('/map', extra: {
                          'chargerSpot': e,
                          'chargerSpots': data,
                        }),
                        key: ValueKey(e.uuid),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
