// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_spot_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChargerSpotImage extends ChargerSpotImage {
  @override
  final String url;
  @override
  final String? caption;

  factory _$ChargerSpotImage(
          [void Function(ChargerSpotImageBuilder)? updates]) =>
      (new ChargerSpotImageBuilder()..update(updates))._build();

  _$ChargerSpotImage._({required this.url, this.caption}) : super._() {
    BuiltValueNullFieldError.checkNotNull(url, r'ChargerSpotImage', 'url');
  }

  @override
  ChargerSpotImage rebuild(void Function(ChargerSpotImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChargerSpotImageBuilder toBuilder() =>
      new ChargerSpotImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChargerSpotImage &&
        url == other.url &&
        caption == other.caption;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, caption.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChargerSpotImage')
          ..add('url', url)
          ..add('caption', caption))
        .toString();
  }
}

class ChargerSpotImageBuilder
    implements Builder<ChargerSpotImage, ChargerSpotImageBuilder> {
  _$ChargerSpotImage? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _caption;
  String? get caption => _$this._caption;
  set caption(String? caption) => _$this._caption = caption;

  ChargerSpotImageBuilder() {
    ChargerSpotImage._defaults(this);
  }

  ChargerSpotImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _caption = $v.caption;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChargerSpotImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChargerSpotImage;
  }

  @override
  void update(void Function(ChargerSpotImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChargerSpotImage build() => _build();

  _$ChargerSpotImage _build() {
    final _$result = _$v ??
        new _$ChargerSpotImage._(
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'ChargerSpotImage', 'url'),
            caption: caption);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
