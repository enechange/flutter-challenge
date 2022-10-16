import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/ui/charget_spot_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class ChargerSpotsPageView extends ConsumerWidget {
  const ChargerSpotsPageView(
    this.chargerSpots, {
    super.key,
    this.scrollDirection = Axis.horizontal,
    this.controller,
    this.onTap,
  });

  final Iterable<ChargerSpot> chargerSpots;
  final Axis scrollDirection;
  final PageController? controller;
  final Function(ChargerSpot)? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ExpandablePageView(
      scrollDirection: scrollDirection,
      controller: controller,
      children: chargerSpots
          .map(
            (e) => ChargerSpotCard(
              e,
              onTap: onTap != null ? () => onTap!(e) : null,
              key: ValueKey(e.uuid),
            ),
          )
          .toList(),
    );
  }
}
