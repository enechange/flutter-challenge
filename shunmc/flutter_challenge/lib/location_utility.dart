import 'dart:math';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationUtility {
  LocationUtility._();

  static Future<LatLngBounds> getCurrentPositionBounds({
    double zoom = 16,
  }) async {
    final position = await getCurrentPosition();
    return getBounds(position, zoom);
  }

  static LatLngBounds getBounds(LatLng position, double zoom) {
    final diff = 256 / pow(2, zoom);
    return LatLngBounds(
      southwest: LatLng(
        position.latitude - diff,
        position.longitude - diff,
      ),
      northeast: LatLng(
        position.latitude + diff,
        position.longitude + diff,
      ),
    );
  }

  static Future<LatLng> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    final position = await Geolocator.getCurrentPosition();
    return LatLng(position.latitude, position.longitude);
  }
}
