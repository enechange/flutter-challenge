import 'package:flutter/material.dart';
import 'package:charger_spot_viewer/model/charger_spot_model.dart';
import 'package:charger_spot_viewer/model/network_client.dart';
import 'package:charger_spot_viewer/widget/charger_spot_card_widget.dart';
import 'package:charger_spot_viewer/widget/charger_spot_map_screen.dart';

const appBarTitle = 'Charger Spot Viewer';

class ChargerSpotListScreen extends StatefulWidget {
  const ChargerSpotListScreen({Key? key}) : super(key: key);

  @override
  _ChargerSpotListScreen createState() => _ChargerSpotListScreen();
}

class _ChargerSpotListScreen extends State<ChargerSpotListScreen> {
  late Future<List<ChargerSpot>> futureChargerSpots;

  @override
  void initState() {
    super.initState();
    futureChargerSpots = fetchChargerSpotData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(appBarTitle),
        ),
        body: Center(
          child: FutureBuilder<List<ChargerSpot>>(
            future: futureChargerSpots,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ChargerSpot> chargerSpots = snapshot.data!;
                return _buildChargerSpotCardList(chargerSpots);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ));
  }

  Widget _buildChargerSpotCardList(List<ChargerSpot> chargerSpots) {
    return ListView.builder(
      itemCount: chargerSpots.length,
      itemBuilder: (context, index) {
        return buildChargerSpotCard(
            chargerSpot: chargerSpots[index],
            onTapFunc: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChargerSpotMapScreen(
                            chargerSpot: chargerSpots[index])),
                  )
                });
      },
    );
  }
}
