import 'package:challenge_oga/component/screen_error_view.dart';
import 'package:challenge_oga/router.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late GoRouter config;

  AppRouter._internal();

  static final AppRouter instance = AppRouter._internal();

  factory AppRouter() => instance;

  static void init() {
    AppRouter.instance.config = GoRouter(
      debugLogDiagnostics: false,
      initialLocation: const ChargerSpotRouteData().location,
      routes: $appRoutes,
      errorBuilder: (context, state) =>
          const ScreenErrorView(message: "ページが見つかりません"),
    );
  }
}
