import 'package:flutter/material.dart';

import 'package:charger_spot_viewer/model/charger_spot_model.dart';
import 'package:charger_spot_viewer/model/charger_spot_model_utils.dart';
import 'package:charger_spot_viewer/model/network_client.dart';

const appTitle = 'Charger Spot Viewer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<ChargerSpot>> futureChargerSpots;

  @override
  void initState() {
    super.initState();
    futureChargerSpots = fetchChargerSpotData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charger Spot Viewer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Charger Spot Viewer'),
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
              // // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildChargerSpotCardList(List<ChargerSpot> chargerSpots) {
    return ListView.builder(
      itemCount: chargerSpots.length,
      itemBuilder: (context, index) {
        return _buildChargerSpotCard(chargerSpots[index]);
      },
    );
  }

  Widget _buildChargerSpotCard(ChargerSpot chargerSpot) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        elevation: 10,
        child: InkWell(
            onTap: () => {debugPrint(chargerSpot.name!)},
            child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(chargerSpot.name!,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.power,
                                        color: Colors.orange, size: 16.0),
                                    const SizedBox(width: 5),
                                    const SizedBox(
                                        width: 100, child: Text("利用可能台数")),
                                    SizedBox(
                                        width: 100,
                                        child: Text(chargerSpot
                                            .chargerDevices!.length
                                            .toString())),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.bolt,
                                        color: Colors.orange, size: 16.0),
                                    const SizedBox(width: 5),
                                    const SizedBox(
                                        width: 100, child: Text("充電出力")),
                                    SizedBox(
                                        width: 100,
                                        child: Text(getTotalPowerkW(
                                            chargerSpot: chargerSpot)))
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.schedule,
                                        color: Colors.orange, size: 16.0),
                                    const SizedBox(width: 5),
                                    const SizedBox(
                                        width: 100, child: Text("営業時間")),
                                    SizedBox(
                                        width: 100,
                                        child: Text(getTodaysBussinessHour(
                                            chargerSpot: chargerSpot)))
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.today,
                                        color: Colors.orange, size: 16.0),
                                    const SizedBox(width: 5),
                                    const SizedBox(
                                        width: 100, child: Text("定休日")),
                                    SizedBox(
                                        width: 100,
                                        child: Text(getClosedDay(
                                            chargerSpot: chargerSpot)))
                                  ],
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset('images/spot.png')),
                                ),
                              ])
                        ])),
                  ],
                ))));
  }
}
