import 'package:flutter/material.dart';
import 'package:flutter_challenge/charger_spots_list_page.dart';

class ChargerSpotsApp extends StatelessWidget {
  const ChargerSpotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChargerSpotsListPage(),
    );
  }
}
