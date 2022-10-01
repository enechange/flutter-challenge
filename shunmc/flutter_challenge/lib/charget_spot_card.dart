import 'package:flutter/material.dart';

class ChargerSpotCard extends StatelessWidget {
  const ChargerSpotCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      child: Card(
        child: Column(
          children: [
            Text('八景島シーパラダイス'),
            Text('利用可能'),
            Text('充電出力'),
            Text('営業中'),
            Text('定休日'),
            TextButton(
              onPressed: null,
              child: Text('地図アプリで経路を見る'),
            ),
          ],
        ),
      ),
    );
  }
}
