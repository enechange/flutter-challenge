import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

final chargerSpotsRepositoryProvider =
    Provider((ref) => ChargerSpotsRepository());

final positionProvider = StateProvider(
  (ref) => LatLngBounds(
    southwest: const LatLng(35.683331703634124, 139.7657155055581),
    northeast: const LatLng(35.686849507072736, 139.77340835691592),
  ),
);

final chargerSpotsProvider = FutureProvider((ref) {
  final repository = ref.read(chargerSpotsRepositoryProvider);
  return repository.getChargerSpots(ref.watch(positionProvider));
});

class ChargerSpotsRepository {
  Future<Iterable<ChargerSpot>?> getChargerSpots(LatLngBounds bounds) async {
    final dio = Dio(BaseOptions(baseUrl: 'https://stg.evene.jp/'));
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
