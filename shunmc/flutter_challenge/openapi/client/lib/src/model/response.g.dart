// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResponseStatusEnum _$responseStatusEnum_ok =
    const ResponseStatusEnum._('ok');
const ResponseStatusEnum _$responseStatusEnum_ngLatlngsIsBlank =
    const ResponseStatusEnum._('ngLatlngsIsBlank');
const ResponseStatusEnum _$responseStatusEnum_ngDistanceTooLong =
    const ResponseStatusEnum._('ngDistanceTooLong');

ResponseStatusEnum _$responseStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$responseStatusEnum_ok;
    case 'ngLatlngsIsBlank':
      return _$responseStatusEnum_ngLatlngsIsBlank;
    case 'ngDistanceTooLong':
      return _$responseStatusEnum_ngDistanceTooLong;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResponseStatusEnum> _$responseStatusEnumValues =
    new BuiltSet<ResponseStatusEnum>(const <ResponseStatusEnum>[
  _$responseStatusEnum_ok,
  _$responseStatusEnum_ngLatlngsIsBlank,
  _$responseStatusEnum_ngDistanceTooLong,
]);

Serializer<ResponseStatusEnum> _$responseStatusEnumSerializer =
    new _$ResponseStatusEnumSerializer();

class _$ResponseStatusEnumSerializer
    implements PrimitiveSerializer<ResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'ngLatlngsIsBlank': 'ng_latlngs_is_blank',
    'ngDistanceTooLong': 'ng_distance_too_long',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'ng_latlngs_is_blank': 'ngLatlngsIsBlank',
    'ng_distance_too_long': 'ngDistanceTooLong',
  };

  @override
  final Iterable<Type> types = const <Type>[ResponseStatusEnum];
  @override
  final String wireName = 'ResponseStatusEnum';

  @override
  Object serialize(Serializers serializers, ResponseStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResponseStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResponseStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Response extends Response {
  @override
  final ResponseStatusEnum status;
  @override
  final BuiltList<ChargerSpot> chargerSpots;

  factory _$Response([void Function(ResponseBuilder)? updates]) =>
      (new ResponseBuilder()..update(updates))._build();

  _$Response._({required this.status, required this.chargerSpots}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'Response', 'status');
    BuiltValueNullFieldError.checkNotNull(
        chargerSpots, r'Response', 'chargerSpots');
  }

  @override
  Response rebuild(void Function(ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseBuilder toBuilder() => new ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Response &&
        status == other.status &&
        chargerSpots == other.chargerSpots;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), chargerSpots.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Response')
          ..add('status', status)
          ..add('chargerSpots', chargerSpots))
        .toString();
  }
}

class ResponseBuilder implements Builder<Response, ResponseBuilder> {
  _$Response? _$v;

  ResponseStatusEnum? _status;
  ResponseStatusEnum? get status => _$this._status;
  set status(ResponseStatusEnum? status) => _$this._status = status;

  ListBuilder<ChargerSpot>? _chargerSpots;
  ListBuilder<ChargerSpot> get chargerSpots =>
      _$this._chargerSpots ??= new ListBuilder<ChargerSpot>();
  set chargerSpots(ListBuilder<ChargerSpot>? chargerSpots) =>
      _$this._chargerSpots = chargerSpots;

  ResponseBuilder() {
    Response._defaults(this);
  }

  ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _chargerSpots = $v.chargerSpots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Response;
  }

  @override
  void update(void Function(ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Response build() => _build();

  _$Response _build() {
    _$Response _$result;
    try {
      _$result = _$v ??
          new _$Response._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'Response', 'status'),
              chargerSpots: chargerSpots.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chargerSpots';
        chargerSpots.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
