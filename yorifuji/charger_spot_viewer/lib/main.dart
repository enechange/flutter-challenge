import 'package:flutter/material.dart';

const appTitle = 'Charger Spot Viewer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(appTitle),
            ),
            body: const Center(child: Text('Hello, $appTitle.'))));
  }
}
