import 'package:flutter/material.dart';
import 'package:charger_spot_viewer/model/charger_spot_model_utils.dart';
import 'package:charger_spot_viewer/model/charger_spot_model.dart';

class ChargerSpotCard extends StatelessWidget {
  const ChargerSpotCard({Key? key, required this.chargerSpot, this.onTapFunc})
      : super(key: key);

  final ChargerSpot chargerSpot;
  final void Function()? onTapFunc;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(left: 15, top: 15, right: 15),
        elevation: 10,
        child: InkWell(
            onTap: onTapFunc,
            child: Container(
                margin: const EdgeInsets.all(10),
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
