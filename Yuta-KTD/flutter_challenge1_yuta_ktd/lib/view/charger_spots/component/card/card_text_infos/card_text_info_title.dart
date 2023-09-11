import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/view/charger_spots/component/card/card_text.dart';

/// 各情報のタイトルとそのアイコン
class CardTextInfoTitle extends StatelessWidget {
  final String title;
  final Color? color;
  const CardTextInfoTitle({
    required this.title,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94.0,
      padding: const EdgeInsets.only(right: 10.0),
      child: CardText(
        title,
        color: color,
      ),
    );
  }
}
