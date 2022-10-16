import 'package:flutter_challenge/ui/charger_spots_list_page.dart';
import 'package:flutter_challenge/ui/charger_spots_map_page.dart';
import 'package:flutter_challenge/ui/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/list',
      builder: (context, state) => const ChargerSpotsListPage(),
    ),
    GoRoute(
      path: '/map',
      builder: (context, state) {
        if (state.extra == null) {
          return const ChargerSpotsMapPage();
        }
        final extra = state.extra as Map<String, Object>;
        return ChargerSpotsMapPage(
          chargerSpot: extra['chargerSpot'] as ChargerSpot,
        );
      },
    ),
  ],
);
