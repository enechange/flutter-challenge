import 'package:flutter/material.dart';
import 'package:charger_spot_viewer/model/charger_spot_model.dart';

const appBarTitle = 'Charger Spot Viewer';

class ChargerSpotMapScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const ChargerSpotMapScreen({Key? key, required this.chargerSpot})
      : super(key: key);

  // Declare a field that holds the Todo.
  final ChargerSpot chargerSpot;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(chargerSpot.name!),
      ),
    );
  }
}
