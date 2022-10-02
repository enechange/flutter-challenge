import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/ui/charget_spot_card.dart';
import 'package:openapi/openapi.dart';

class ChargerSpotsListPage extends StatelessWidget {
  const ChargerSpotsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final openApi =
        Openapi(dio: Dio(BaseOptions(baseUrl: 'https://stg.evene.jp/')));
    final repository = openApi.getChargerSpotsApi();
    final response = repository.chargerSpots(
      X_EVENE_NATIVE_API_TOKEN: const String.fromEnvironment('API_TOKEN'),
      swLat: '35.683331703634124',
      swLng: '139.7657155055581',
      neLat: '35.686849507072736',
      neLng: '139.77340835691592',
    );
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: response,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.data == null || snapshot.data!.data == null) {
                return Text('error');
              }
              return SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 22),
                child: Column(
                  children: snapshot.data!.data!.chargerSpots
                      .map((e) => ChargerSpotCard(e, key: ValueKey(e.uuid)))
                      .toList(),
                ),
              );
            }),
      ),
    );
  }
}
