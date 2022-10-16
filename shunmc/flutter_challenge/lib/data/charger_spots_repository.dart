import 'package:dio/dio.dart';
import 'package:flutter_challenge/dio.dart';
import 'package:flutter_challenge/location_utility.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

final chargerSpotsRepositoryProvider = Provider(
  (ref) {
    return ChargerSpotsRepository(ref.watch(dioProvider));
  },
);

final selectedChargerSpotProvider = StateProvider<ChargerSpot?>((ref) => null);

final zoomProvider = StateProvider<double>((ref) => 16);

final examplePositionProvider =
    Provider((ref) => const LatLng(35.6850906054, 139.769561931));

final examplePositionBoundsProvider = Provider(
  (ref) => LocationUtility.getBounds(
    ref.watch(examplePositionProvider),
    ref.watch(zoomProvider),
  ),
);

final currentPositionProvider = FutureProvider(
  (ref) async {
    try {
      return LocationUtility.getCurrentPosition();
    } catch (e) {
      return ref.read(examplePositionProvider);
    }
  },
);

final currentPositionBoundsProvider = FutureProvider(
  (ref) async => LocationUtility.getBounds(
    await ref.watch(currentPositionProvider.future),
    ref.watch(zoomProvider),
  ),
);

final positionProvider = StateProvider((ref) {
  return ref.read(examplePositionProvider);
});

final positionBoundsProvider = Provider(
  (ref) => LocationUtility.getBounds(
    ref.watch(positionProvider),
    ref.watch(zoomProvider),
  ),
);

final chargerSpotsProvider = FutureProvider(
  (ref) async {
    final repository = ref.read(chargerSpotsRepositoryProvider);
    var positionBounds = ref.watch(positionBoundsProvider);
    return repository.getChargerSpots(positionBounds);
  },
);

class ChargerSpotsRepository {
  ChargerSpotsRepository(this.dio);

  final Dio dio;

  Future<Iterable<ChargerSpot>?> getChargerSpots(LatLngBounds bounds) async {
    final openApi = Openapi(dio: dio);
    final repository = openApi.getChargerSpotsApi();
    final response = await repository.chargerSpots(
      X_EVENE_NATIVE_API_TOKEN: const String.fromEnvironment('API_TOKEN'),
      swLat: bounds.southwest.latitude.toString(),
      swLng: bounds.southwest.longitude.toString(),
      neLat: bounds.northeast.latitude.toString(),
      neLng: bounds.northeast.longitude.toString(),
    );
    return response.data?.chargerSpots;
  }
}
