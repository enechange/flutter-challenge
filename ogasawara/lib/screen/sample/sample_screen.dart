import 'package:challenge_oga/router.dart';
import 'package:flutter/material.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            const HomeRouteData().go(context);
          },
          child: const Text('地図画面に移動'),
        ),
      ),
    );
  }
}
