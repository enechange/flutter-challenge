import 'package:flutter_challenge/ui/charger_spots_list_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ChargerSpotsListPage(),
    ),
  ],
);
