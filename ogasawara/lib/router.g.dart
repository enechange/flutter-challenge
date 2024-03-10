// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $sampleRouteData,
    ];

RouteBase get $sampleRouteData => GoRouteData.$route(
      path: '/sample',
      factory: $SampleRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'charger_sport',
          factory: $ChargerSpotRouteDataExtension._fromState,
        ),
      ],
    );

extension $SampleRouteDataExtension on SampleRouteData {
  static SampleRouteData _fromState(GoRouterState state) =>
      const SampleRouteData();

  String get location => GoRouteData.$location(
        '/sample',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChargerSpotRouteDataExtension on ChargerSpotRouteData {
  static ChargerSpotRouteData _fromState(GoRouterState state) =>
      const ChargerSpotRouteData();

  String get location => GoRouteData.$location(
        '/sample/charger_sport',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
