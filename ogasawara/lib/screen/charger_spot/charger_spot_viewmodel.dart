import 'package:challenge_oga/screen/charger_spot/charger_pin_image_generator.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/api.dart';

class ChargerSpotViewModel extends ChangeNotifier {
  late GoogleMapController _mapController;
  final PageController _pageController = PageController();
  List<APIChargerSpot> _chargerSpots = [];
  CameraPosition? _initialCameraPosition;
  UiState _uiState = Idle();
  Set<Marker> _markers = {};

  // Getters
  GoogleMapController get mapController => _mapController;
  PageController get pageController => _pageController;
  List<APIChargerSpot> get chargerSpots => _chargerSpots;
  CameraPosition? get initialCameraPosition => _initialCameraPosition;
  UiState get uiState => _uiState;
  Set<Marker> get markers => _markers;

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

  void updateGoogleMapController(GoogleMapController controller) {
    _mapController = controller;
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
          _markers = await _createMarkers(_chargerSpots);
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

  Future<Set<Marker>> _createMarkers(List<APIChargerSpot> chargerSpots) async {
    return (await Future.wait(chargerSpots.map((chargerSpot) async {
      final pinImageBytes = await ChargerPinImageGenerator()
          .generatePinImageToPNG(chargerSpot.chargerDevices.length);

      final icon = pinImageBytes != null
          ? BitmapDescriptor.fromBytes(pinImageBytes)
          : BitmapDescriptor.defaultMarker;

      return Marker(
        markerId: MarkerId(chargerSpot.uuid.toString()),
        position: LatLng(
          chargerSpot.latitude.toDouble(),
          chargerSpot.longitude.toDouble(),
        ),
        icon: icon,
        onTap: () {
          final index = chargerSpots.indexOf(chargerSpot);
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
      );
    })))
        .toSet();
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
