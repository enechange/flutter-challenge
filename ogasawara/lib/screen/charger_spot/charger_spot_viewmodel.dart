import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/api.dart';

class ChargerSpotViewModel extends ChangeNotifier {
  List<APIChargerSpot> _chargerSpots = [];
  CameraPosition? _initialCameraPosition;
  UiState _uiState = Idle();

  // Getters
  UiState get uiState => _uiState;
  List<APIChargerSpot> get chargerSpots => _chargerSpots;
  CameraPosition? get initialCameraPosition => _initialCameraPosition;

  set __uiState(UiState newState) {
    if (_uiState != newState) {
      _uiState = newState;
      notifyListeners();
    }
  }

  Future<void> fetchInitialCurrentLocation() async {
    __uiState = Initializing();
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        __uiState = Error();
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          __uiState = Error();
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        __uiState = Error();
        return;
      }

      final currentPosition = await Geolocator.getCurrentPosition();
      _initialCameraPosition = CameraPosition(
          target: LatLng(currentPosition.latitude, currentPosition.longitude),
          zoom: 14);
      __uiState = Initialized();
    } catch (e) {
      __uiState = Error();
    }
  }

  Future<void> fetchChargerSpots(LatLngBounds target) async {
    if (_uiState is Loading) return;

    try {
      debugPrint('fetchChargerSpots');
      __uiState = Loading();
      final result = await ChargerSpotsApi().chargerSpots(
          const String.fromEnvironment("EVENE_NATIVE_API_TOKEN"),
          swLat: target.southwest.latitude.toString(),
          swLng: target.southwest.longitude.toString(),
          neLat: target.northeast.latitude.toString(),
          neLng: target.northeast.longitude.toString());

      switch (result?.status) {
        case APIResponseStatusEnum.ok:
          _chargerSpots = result?.chargerSpots ?? [];
          __uiState = Success();
          debugPrint('chargerSpots length = ${result?.chargerSpots.length}');
          break;
        case APIResponseStatusEnum.ngDistanceTooLong:
        case APIResponseStatusEnum.ngLatlngsIsBlank:
          __uiState = Error();
          break;
      }
    } catch (e) {
      __uiState = Error();
    }
  }
}

sealed class UiState {}

class Idle extends UiState {}

class Initializing extends UiState {}

class Initialized extends UiState {}

class Loading extends UiState {}

class Success extends UiState {
  Success();
}

class Error extends UiState {
  Error();
}
