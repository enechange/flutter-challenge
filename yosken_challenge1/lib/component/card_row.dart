import 'package:flutter/material.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';

Widget makeRowForCard(IconData icons, String title, String info) => Padding(
      padding: spotInfoPadding,
      child: SizedBox(
        height: spotInfoHeight,
        child: Row(
          children: [
            Icon(
              icons,
              size: spotInfoIconSize,
              color: spotInfoIconColor,
            ),
            Text(title),
            const SizedBox(width: spotInfoMargin),
            Text(info)
          ],
        ),
      ),
    );






