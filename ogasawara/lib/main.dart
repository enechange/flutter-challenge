import 'package:challenge_oga/app_router.dart';
import 'package:flutter/material.dart';
import 'package:openapi/api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final result = await ChargerSpotsApi().chargerSpots(
    const String.fromEnvironment("EVENE_NATIVE_API_TOKEN"),
    swLat: '35.683331703634124',
    swLng: '139.76968669891357',
    neLat: '35.689331703634124',
    neLng: '139.77568669891357',
  );
  AppRouter.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRouter.instance.config);
  }
}
