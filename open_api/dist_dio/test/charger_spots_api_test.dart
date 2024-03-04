import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ChargerSpotsApi
void main() {
  final instance = Openapi().getChargerSpotsApi();

  group(ChargerSpotsApi, () {
    // 充電スポットと充電スポットに紐づく充電器を返します。緯度経度（４つ）、uuidまたはtextのいずれかが必須。
    //
    //Future<APIResponse> chargerSpots(String X_EVENE_NATIVE_API_TOKEN, { String userUuid, String swLat, String swLng, String neLat, String neLng, String uuid, String text, String fields, String deviceTypes, String feeTypes, String nowAvailable, String styles, String gogoevAuthenticationNetworks, String categories, String open24Hours, String advanceContacts, String parkingFeeTypes }) async
    test('test chargerSpots', () async {
      // TODO
    });

  });
}
