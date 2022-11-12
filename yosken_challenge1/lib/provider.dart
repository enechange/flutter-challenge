import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';
import 'package:yosken_challenge1/constant/others.dart';
import 'package:yosken_challenge1/src/chargespots.dart';
import 'package:yosken_challenge1/model/get_api_data.dart';

final StateProvider rangeStateProvider = StateProvider((ref) => rangeLatLng);

final countProvider = StateProvider((ref) => 0);

final chargerSpotsFutureProvider = FutureProvider((ref) async {
  final swAndNeLatLng = ref.watch(searchPositionProvider);
  return fetchChargerSpots(swAndNeLatLng);
});

final searchPositionProvider = StateProvider((ref) {
  return SwAndNeLatLng(firstSwLat, firstSwLng,
      firstNeLat, firstNeLng);
});

Position? _currentPosition;
final StateProvider myPositionProvider = StateProvider((ref) => _currentPosition);

final spotInfoPageViewProvider = StateProvider((ref)  {

});