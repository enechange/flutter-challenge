import 'dart:ui' as ui;

import 'package:challenge_oga/theme/theme.dart';
import 'package:challenge_oga/util/image_processor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChargerPinImageGenerator {
  Future<Uint8List?> generatePinImageToPNG(int chargerCount) async {
    final pictureInfo = await vg.loadPicture(
        const SvgAssetLoader("assets/icons/pin.svg"), null);

    double devicePixelRatio =
        ui.PlatformDispatcher.instance.views.first.devicePixelRatio;

    int imageWidth = (pictureInfo.size.width * devicePixelRatio).toInt();
    int imageHeight = (pictureInfo.size.height * devicePixelRatio).toInt();

    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder)..drawPicture(pictureInfo.picture);

    // 画像の中心
    final circleCenter = ui.Offset(
        imageWidth / 2 / devicePixelRatio, imageHeight / 2 / devicePixelRatio);

    // 画像の中心から少し上に白い円形を描画
    final circlePaint = ui.Paint()..color = Colors.white;
    const circleOffset = ui.Offset(-4, -12);
    const circleRadius = 14.0;
    canvas.drawCircle(circleCenter + circleOffset, circleRadius, circlePaint);

    final textPainter = TextPainter(
      text: TextSpan(
        text: chargerCount.toString(),
        style: const TextStyle(
          fontSize: 16,
          color: textColor,
          fontWeight: ui.FontWeight.bold,
        ),
      ),
      textAlign: TextAlign.center,
      textDirection: ui.TextDirection.ltr,
    )..layout();

    // 円形の中にテキストを描画
    final textOffset = circleCenter +
        circleOffset -
        ui.Offset(textPainter.width / 2, textPainter.height / 2);
    textPainter.paint(canvas, textOffset);

    final rasterPicture = recorder.endRecording();
    final image = await rasterPicture.toImage(imageWidth, imageHeight);

    return ImageProcessor().encodeImageToPNG(image);
  }
}
