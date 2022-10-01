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
    return $jf($jc($jc(0, url.hashCode), caption.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
