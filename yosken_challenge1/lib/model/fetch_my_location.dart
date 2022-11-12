import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yosken_challenge1/src/chargespots.dart';

LatLng makeMyLatLng(Position position) {
  double longitude = position.longitude;
  double latitude = position.latitude;
  final myLatLng = LatLng(latitude, longitude);
  return myLatLng;
}

SwAndNeLatLng makeSwAndNeLatLng(LatLng range, Position position) {
  final swLat = position.latitude - range.latitude / 2;
  final swLng = position.longitude - range.longitude / 2;
  final neLat = position.latitude + range.latitude / 2;
  final neLng = position.longitude + range.longitude / 2;
  return SwAndNeLatLng(swLat, swLng, neLat, neLng);
}
