import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BitmapDescriptorUtility {
  BitmapDescriptorUtility._();

  static Future<BitmapDescriptor> fromWidget(GlobalKey key) async {
    if (key.currentContext?.findRenderObject() == null) {
      await Future.delayed(const Duration(milliseconds: 20));
      return fromWidget(key);
    }

    final boundary =
        key.currentContext?.findRenderObject() as RenderRepaintBoundary;

    if (boundary.debugNeedsPaint) {
      await Future.delayed(const Duration(milliseconds: 20));
      return fromWidget(key);
    }

    final image = await boundary.toImage(
      pixelRatio: 3,
    );
    final byteData = await image.toByteData(
      format: ImageByteFormat.png,
    );
    return BitmapDescriptor.fromBytes(
      byteData?.buffer.asUint8List() ?? Uint8List(0),
    );
  }
}
