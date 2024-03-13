import 'package:challenge_oga/app_router.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
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
