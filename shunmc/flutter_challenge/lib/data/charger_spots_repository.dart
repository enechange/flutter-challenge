import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/openapi.dart';

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
