import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/charger_spots_repository.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mounted = useIsMounted();

    Future<void> goToNext() async {
      final position = await ref.read(currentPositionProvider.future);
      ref.read(positionProvider.notifier).state = position;
      final chargerSpots = await ref.read(chargerSpotsProvider.future);
      if (!mounted()) {
        return;
      }
      if (chargerSpots?.isNotEmpty ?? false) {
        context.go('/list');
      } else {
        context.go('/map');
      }
    }

    goToNext();
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
