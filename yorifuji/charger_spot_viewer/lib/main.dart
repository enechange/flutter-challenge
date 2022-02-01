import 'package:flutter/material.dart';
import 'package:charger_spot_viewer/widget/charger_spot_list_screen.dart';

const appTitle = 'Charger Spot Viewer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: appTitle, home: ChargerSpotListScreen());
  }
}
