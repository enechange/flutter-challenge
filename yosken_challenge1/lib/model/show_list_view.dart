import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yosken_challenge1/spot_info_list_view.dart';
import 'package:flutter/material.dart';

void showListView(
    BuildContext context, GoogleMapController googleMapController) {
  showModalBottomSheet(
      backgroundColor: Colors.white,
      isScrollControlled: true, //trueにしないと、Containerのheightが反映されない
      context: context,
      builder: (BuildContext context) => SpotInfoListView(googleMapController));
}
