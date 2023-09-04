import 'package:flutter/material.dart';
import 'package:yosken_challenge1/constant/importer_constant.dart';

Widget makeRowForServiceTime(IconData icons, Widget text, String info) =>
    Padding(
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
            text,
            const SizedBox(width: spotInfoMargin),
            Text(info)
          ],
        ),
      ),
    );
