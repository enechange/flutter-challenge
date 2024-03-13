import 'package:flutter/material.dart';

class ScreenErrorView extends StatelessWidget {
  final String message;

  const ScreenErrorView({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
