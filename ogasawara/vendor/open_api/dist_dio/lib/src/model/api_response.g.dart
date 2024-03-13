// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const APIResponseStatusEnum _$aPIResponseStatusEnum_ok =
    const APIResponseStatusEnum._('ok');
const APIResponseStatusEnum _$aPIResponseStatusEnum_ngLatlngsIsBlank =
    const APIResponseStatusEnum._('ngLatlngsIsBlank');
const APIResponseStatusEnum _$aPIResponseStatusEnum_ngDistanceTooLong =
    const APIResponseStatusEnum._('ngDistanceTooLong');

APIResponseStatusEnum _$aPIResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$aPIResponseStatusEnum_ok;
    case 'ngLatlngsIsBlank':
      return _$aPIResponseStatusEnum_ngLatlngsIsBlank;
    case 'ngDistanceTooLong':
      return _$aPIResponseStatusEnum_ngDistanceTooLong;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<APIResponseStatusEnum> _$aPIResponseStatusEnumValues =
    new BuiltSet<APIResponseStatusEnum>(const <APIResponseStatusEnum>[
  _$aPIResponseStatusEnum_ok,
  _$aPIResponseStatusEnum_ngLatlngsIsBlank,
  _$aPIResponseStatusEnum_ngDistanceTooLong,
]);

Serializer<APIResponseStatusEnum> _$aPIResponseStatusEnumSerializer =
    new _$APIResponseStatusEnumSerializer();

class _$APIResponseStatusEnumSerializer
    implements PrimitiveSerializer<APIResponseStatusEnum> {
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
  final Iterable<Type> types = const <Type>[APIResponseStatusEnum];
  @override
  final String wireName = 'APIResponseStatusEnum';

  @override
  Object serialize(Serializers serializers, APIResponseStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  APIResponseStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      APIResponseStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$APIResponse extends APIResponse {
  @override
  final APIResponseStatusEnum status;
  @override
  final BuiltList<APIChargerSpot> chargerSpots;

  factory _$APIResponse([void Function(APIResponseBuilder)? updates]) =>
      (new APIResponseBuilder()..update(updates))._build();

  _$APIResponse._({required this.status, required this.chargerSpots})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'APIResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(
        chargerSpots, r'APIResponse', 'chargerSpots');
  }

  @override
  APIResponse rebuild(void Function(APIResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIResponseBuilder toBuilder() => new APIResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIResponse &&
        status == other.status &&
        chargerSpots == other.chargerSpots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, chargerSpots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'APIResponse')
          ..add('status', status)
          ..add('chargerSpots', chargerSpots))
        .toString();
  }
}

class APIResponseBuilder implements Builder<APIResponse, APIResponseBuilder> {
  _$APIResponse? _$v;

  APIResponseStatusEnum? _status;
  APIResponseStatusEnum? get status => _$this._status;
  set status(APIResponseStatusEnum? status) => _$this._status = status;

  ListBuilder<APIChargerSpot>? _chargerSpots;
  ListBuilder<APIChargerSpot> get chargerSpots =>
      _$this._chargerSpots ??= new ListBuilder<APIChargerSpot>();
  set chargerSpots(ListBuilder<APIChargerSpot>? chargerSpots) =>
      _$this._chargerSpots = chargerSpots;

  APIResponseBuilder() {
    APIResponse._defaults(this);
  }

  APIResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _chargerSpots = $v.chargerSpots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$APIResponse;
  }

  @override
  void update(void Function(APIResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIResponse build() => _build();

  _$APIResponse _build() {
    _$APIResponse _$result;
    try {
      _$result = _$v ??
          new _$APIResponse._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'APIResponse', 'status'),
              chargerSpots: chargerSpots.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chargerSpots';
        chargerSpots.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'APIResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
