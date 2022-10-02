/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $ImagesGen {
  const $ImagesGen();

  /// File path: images/icon_bolt.png
  AssetGenImage get iconBoltPng => const AssetGenImage('images/icon_bolt.png');

  /// File path: images/icon_bolt.svg
  String get iconBoltSvg => 'images/icon_bolt.svg';

  /// File path: images/icon_power.png
  AssetGenImage get iconPowerPng =>
      const AssetGenImage('images/icon_power.png');

  /// File path: images/icon_power.svg
  String get iconPowerSvg => 'images/icon_power.svg';

  /// File path: images/icon_today.png
  AssetGenImage get iconTodayPng =>
      const AssetGenImage('images/icon_today.png');

  /// File path: images/icon_today.svg
  String get iconTodaySvg => 'images/icon_today.svg';

  /// File path: images/icon_watch.png
  AssetGenImage get iconWatchPng =>
      const AssetGenImage('images/icon_watch.png');

  /// File path: images/icon_watch.svg
  String get iconWatchSvg => 'images/icon_watch.svg';

  /// File path: images/noimage.png
  AssetGenImage get noimage => const AssetGenImage('images/noimage.png');

  /// List of all assets
  List<dynamic> get values => [
        iconBoltPng,
        iconBoltSvg,
        iconPowerPng,
        iconPowerSvg,
        iconTodayPng,
        iconTodaySvg,
        iconWatchPng,
        iconWatchSvg,
        noimage
      ];
}

class Assets {
  Assets._();

  static const $ImagesGen images = $ImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
