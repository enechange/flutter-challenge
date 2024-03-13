import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';

class ImageProcessor {
  Future<Uint8List?> encodeImageToPNG(ui.Image image) async {
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }
}
