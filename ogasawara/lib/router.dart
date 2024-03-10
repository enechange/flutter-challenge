import 'package:challenge_oga/screen/charger_spot/charger_spot_screen.dart';
import 'package:challenge_oga/screen/sample/sample_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

// TODO: ホットリロード開発しやすいルーティング
@TypedGoRoute<SampleRouteData>(path: "/sample", routes: [
  TypedGoRoute<ChargerSpotRouteData>(path: 'charger_sport', routes: []),
])
class SampleRouteData extends GoRouteData {
  const SampleRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SampleScreen();
}

class ChargerSpotRouteData extends GoRouteData {
  const ChargerSpotRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ChargerSpotScreen();
}
