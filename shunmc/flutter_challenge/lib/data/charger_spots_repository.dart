import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';

class ChargerSpotsRepository {
  Future<Iterable<ChargerSpot>?> getChargerSpots({
    required String swLat,
    required String swLng,
    required String neLat,
    required String neLng,
  }) async {
    final dio = Dio(BaseOptions(baseUrl: 'https://stg.evene.jp/'));
    final openApi = Openapi(dio: dio);
    final repository = openApi.getChargerSpotsApi();
    final response = await repository.chargerSpots(
      X_EVENE_NATIVE_API_TOKEN: const String.fromEnvironment('API_TOKEN'),
      swLat: swLat,
      swLng: swLng,
      neLat: neLat,
      neLng: neLng,
    );
    return response.data?.chargerSpots;
  }
}
