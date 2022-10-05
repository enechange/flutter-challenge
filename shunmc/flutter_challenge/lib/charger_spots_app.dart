import 'package:flutter/material.dart';
import 'package:flutter_challenge/router.dart';

class ChargerSpotsApp extends StatelessWidget {
  const ChargerSpotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
