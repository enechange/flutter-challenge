import 'package:flutter/material.dart';
import 'package:flutter_challenge/ui/charget_spot_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class ChargerSpotsListView extends ConsumerWidget {
  const ChargerSpotsListView(
    this.chargerSpots, {
    super.key,
    this.scrollDirection = Axis.vertical,
    this.controller,
    this.onTap,
  });

  final Iterable<ChargerSpot> chargerSpots;
  final Axis scrollDirection;
  final ScrollController? controller;
  final Function(ChargerSpot)? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cards = chargerSpots
        .map(
          (e) => ChargerSpotCard(
            e,
            onTap: onTap != null ? () => onTap!(e) : null,
            key: ValueKey(e.uuid),
          ),
        )
        .toList();
    return SingleChildScrollView(
      scrollDirection: scrollDirection,
      controller: controller,
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: Center(
        child: scrollDirection == Axis.vertical
            ? Column(children: cards)
            : Row(children: cards),
      ),
    );
  }
}
