import 'package:challenge_oga/screen/charger_spot/charger_spot_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@TypedGoRoute<ChargerSpotRouteData>(path: "/charger_sport")
class ChargerSpotRouteData extends GoRouteData {
  const ChargerSpotRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ChargerSpotScreen();
}
