import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';
import 'package:yosken_challenge1/src/chargespots.dart';

void moveCamera(GoogleMapController googleMapController, Position position) {
  googleMapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
          target: LatLng(position.latitude, position.longitude),
          zoom: defaultZoom)));
}

void moveCameraForPageChanged(
    GoogleMapController googleMapController, ChargerSpot chargerSpot) {
  googleMapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
          target: LatLng(chargerSpot.latitude!, chargerSpot.longitude!),
          zoom: defaultZoom)));
}
void moveCameraToFirstSpot(GoogleMapController googleMapController,ChargerSpots chargerSpots) {
  chargerSpots.charger_spots!.isEmpty ? null :
      moveCameraForPageChanged(googleMapController,chargerSpots.charger_spots![0]);
}
