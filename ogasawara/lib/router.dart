import 'package:challenge_oga/screen/home/home_screen.dart';
import 'package:challenge_oga/screen/sample/sample_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

// TODO: ホットリロード開発しやすいルーティング
@TypedGoRoute<SampleRouteData>(path: "/sample", routes: [
  TypedGoRoute<HomeRouteData>(path: 'home', routes: []),
])
class SampleRouteData extends GoRouteData {
  const SampleRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SampleScreen();
}

class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}
