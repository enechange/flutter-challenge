import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yosken_challenge1/model/fetch_my_location.dart';
import 'package:yosken_challenge1/model/show_list_view.dart';
import 'package:yosken_challenge1/spot_info_page_view.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';
import 'package:yosken_challenge1/constant/others.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MapPage extends ConsumerStatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends ConsumerState<MapPage> {
  dynamic _asyncWidget = loadingIndicatorForPageView;
  late BitmapDescriptor myIcon = BitmapDescriptor.defaultMarker;
  final Completer<GoogleMapController> _controller = Completer();
  late StreamSubscription<Position> positionStream; //現在地をlistenし続ける関数
  final LocationSettings locationSettings = locationSettingsForMap;
  late LatLng _initialPosition;
  late bool _loading;


  @override
  void initState() {
    super.initState();
    final range = ref.read(rangeStateProvider);
    _loading = true;
    // _getUserLocation();

    //位置情報が許可されていない時に許可をリクエストする
    Future(() async {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.requestPermission();
      }
      //現在位置を更新し続ける
      positionStream =
          Geolocator.getPositionStream(locationSettings: locationSettings)
              .listen((Position? position) {
            // currentPosition = position;
            ref.read(myPositionProvider.notifier).state = position;
          });

      Future.delayed(const Duration(seconds: 1)).then((_) => {
        ref.read(searchPositionProvider.notifier).state = makeSwAndNeLatLng(
            range, ref.read(myPositionProvider.notifier).state),
      });
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _initialPosition = LatLng(position.latitude, position.longitude);
        _loading = false;
      });
    });


  }

  @override
  Widget build(BuildContext context) {
    final mapMarker = ref.watch(markerProvider);

    return _loading ? loadingIndicatorForPageView : SafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GoogleMap(
            mapType: MapType.normal,
            padding: mapCenterPosition,
            initialCameraPosition: CameraPosition(target: _initialPosition,zoom: defaultZoom),
            myLocationButtonEnabled: false,
            //現在位置のボタン
            myLocationEnabled: true,
            //現在位置をマップ上に表示
            markers: mapMarker,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              asyncSpotInfoPageView();
            },
          ),
          _asyncWidget,
        ],
      ),
    );
  }

  ///model_mapControllerがcreateされるまでawait(初回起動時のみ)
  Future<void> asyncSpotInfoPageView() async {
    final GoogleMapController mapController = await _controller.future;
    final myIcon = BitmapDescriptor.fromBytes(
        await getBytesFromAsset(markerImagePath, markerSize));
    setState(() {
      _asyncWidget = SpotInfoPageView(
        myIcon,
        mapController,
      );
      showListView(context, mapController);
    });
  }

  ///model_pngをUint8List型に変換
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
