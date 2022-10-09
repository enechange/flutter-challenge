import 'package:flutter/material.dart';
import 'package:flutter_challenge/gen/fonts.gen.dart';
import 'package:flutter_challenge/router.dart';

class ChargerSpotsApp extends StatelessWidget {
  const ChargerSpotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: FontFamily.notoSansJP,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              bodyText2: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
      ),
    );
  }
}
