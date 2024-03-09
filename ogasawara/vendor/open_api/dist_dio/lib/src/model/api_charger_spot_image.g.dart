// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_charger_spot_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIChargerSpotImage extends APIChargerSpotImage {
  @override
  final String url;
  @override
  final String? caption;

  factory _$APIChargerSpotImage(
          [void Function(APIChargerSpotImageBuilder)? updates]) =>
      (new APIChargerSpotImageBuilder()..update(updates))._build();

  _$APIChargerSpotImage._({required this.url, this.caption}) : super._() {
    BuiltValueNullFieldError.checkNotNull(url, r'APIChargerSpotImage', 'url');
  }

  @override
  APIChargerSpotImage rebuild(
          void Function(APIChargerSpotImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIChargerSpotImageBuilder toBuilder() =>
      new APIChargerSpotImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIChargerSpotImage &&
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
    return (newBuiltValueToStringHelper(r'APIChargerSpotImage')
          ..add('url', url)
          ..add('caption', caption))
        .toString();
  }
}

class APIChargerSpotImageBuilder
    implements Builder<APIChargerSpotImage, APIChargerSpotImageBuilder> {
  _$APIChargerSpotImage? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _caption;
  String? get caption => _$this._caption;
  set caption(String? caption) => _$this._caption = caption;

  APIChargerSpotImageBuilder() {
    APIChargerSpotImage._defaults(this);
  }

  APIChargerSpotImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _caption = $v.caption;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIChargerSpotImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$APIChargerSpotImage;
  }

  @override
  void update(void Function(APIChargerSpotImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIChargerSpotImage build() => _build();

  _$APIChargerSpotImage _build() {
    final _$result = _$v ??
        new _$APIChargerSpotImage._(
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'APIChargerSpotImage', 'url'),
            caption: caption);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
