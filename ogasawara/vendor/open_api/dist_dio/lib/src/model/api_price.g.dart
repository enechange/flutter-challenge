// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const APIPriceUnitTypeEnum _$aPIPriceUnitTypeEnum_minute =
    const APIPriceUnitTypeEnum._('minute');
const APIPriceUnitTypeEnum _$aPIPriceUnitTypeEnum_kwh =
    const APIPriceUnitTypeEnum._('kwh');

APIPriceUnitTypeEnum _$aPIPriceUnitTypeEnumValueOf(String name) {
  switch (name) {
    case 'minute':
      return _$aPIPriceUnitTypeEnum_minute;
    case 'kwh':
      return _$aPIPriceUnitTypeEnum_kwh;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<APIPriceUnitTypeEnum> _$aPIPriceUnitTypeEnumValues =
    new BuiltSet<APIPriceUnitTypeEnum>(const <APIPriceUnitTypeEnum>[
  _$aPIPriceUnitTypeEnum_minute,
  _$aPIPriceUnitTypeEnum_kwh,
]);

Serializer<APIPriceUnitTypeEnum> _$aPIPriceUnitTypeEnumSerializer =
    new _$APIPriceUnitTypeEnumSerializer();

class _$APIPriceUnitTypeEnumSerializer
    implements PrimitiveSerializer<APIPriceUnitTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'minute': 'minute',
    'kwh': 'kwh',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'minute': 'minute',
    'kwh': 'kwh',
  };

  @override
  final Iterable<Type> types = const <Type>[APIPriceUnitTypeEnum];
  @override
  final String wireName = 'APIPriceUnitTypeEnum';

  @override
  Object serialize(Serializers serializers, APIPriceUnitTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  APIPriceUnitTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      APIPriceUnitTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$APIPrice extends APIPrice {
  @override
  final String price;
  @override
  final String? price3kw;
  @override
  final String unitMinutes;
  @override
  final num minuteFrom;
  @override
  final num? minuteTo;
  @override
  final APIPriceUnitTypeEnum unitType;
  @override
  final String unitValue;
  @override
  final num? kwhFrom;
  @override
  final num? kwhTo;

  factory _$APIPrice([void Function(APIPriceBuilder)? updates]) =>
      (new APIPriceBuilder()..update(updates))._build();

  _$APIPrice._(
      {required this.price,
      this.price3kw,
      required this.unitMinutes,
      required this.minuteFrom,
      this.minuteTo,
      required this.unitType,
      required this.unitValue,
      this.kwhFrom,
      this.kwhTo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(price, r'APIPrice', 'price');
    BuiltValueNullFieldError.checkNotNull(
        unitMinutes, r'APIPrice', 'unitMinutes');
    BuiltValueNullFieldError.checkNotNull(
        minuteFrom, r'APIPrice', 'minuteFrom');
    BuiltValueNullFieldError.checkNotNull(unitType, r'APIPrice', 'unitType');
    BuiltValueNullFieldError.checkNotNull(unitValue, r'APIPrice', 'unitValue');
  }

  @override
  APIPrice rebuild(void Function(APIPriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIPriceBuilder toBuilder() => new APIPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIPrice &&
        price == other.price &&
        price3kw == other.price3kw &&
        unitMinutes == other.unitMinutes &&
        minuteFrom == other.minuteFrom &&
        minuteTo == other.minuteTo &&
        unitType == other.unitType &&
        unitValue == other.unitValue &&
        kwhFrom == other.kwhFrom &&
        kwhTo == other.kwhTo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, price3kw.hashCode);
    _$hash = $jc(_$hash, unitMinutes.hashCode);
    _$hash = $jc(_$hash, minuteFrom.hashCode);
    _$hash = $jc(_$hash, minuteTo.hashCode);
    _$hash = $jc(_$hash, unitType.hashCode);
    _$hash = $jc(_$hash, unitValue.hashCode);
    _$hash = $jc(_$hash, kwhFrom.hashCode);
    _$hash = $jc(_$hash, kwhTo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'APIPrice')
          ..add('price', price)
          ..add('price3kw', price3kw)
          ..add('unitMinutes', unitMinutes)
          ..add('minuteFrom', minuteFrom)
          ..add('minuteTo', minuteTo)
          ..add('unitType', unitType)
          ..add('unitValue', unitValue)
          ..add('kwhFrom', kwhFrom)
          ..add('kwhTo', kwhTo))
        .toString();
  }
}

class APIPriceBuilder implements Builder<APIPrice, APIPriceBuilder> {
  _$APIPrice? _$v;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _price3kw;
  String? get price3kw => _$this._price3kw;
  set price3kw(String? price3kw) => _$this._price3kw = price3kw;

  String? _unitMinutes;
  String? get unitMinutes => _$this._unitMinutes;
  set unitMinutes(String? unitMinutes) => _$this._unitMinutes = unitMinutes;

  num? _minuteFrom;
  num? get minuteFrom => _$this._minuteFrom;
  set minuteFrom(num? minuteFrom) => _$this._minuteFrom = minuteFrom;

  num? _minuteTo;
  num? get minuteTo => _$this._minuteTo;
  set minuteTo(num? minuteTo) => _$this._minuteTo = minuteTo;

  APIPriceUnitTypeEnum? _unitType;
  APIPriceUnitTypeEnum? get unitType => _$this._unitType;
  set unitType(APIPriceUnitTypeEnum? unitType) => _$this._unitType = unitType;

  String? _unitValue;
  String? get unitValue => _$this._unitValue;
  set unitValue(String? unitValue) => _$this._unitValue = unitValue;

  num? _kwhFrom;
  num? get kwhFrom => _$this._kwhFrom;
  set kwhFrom(num? kwhFrom) => _$this._kwhFrom = kwhFrom;

  num? _kwhTo;
  num? get kwhTo => _$this._kwhTo;
  set kwhTo(num? kwhTo) => _$this._kwhTo = kwhTo;

  APIPriceBuilder() {
    APIPrice._defaults(this);
  }

  APIPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _price = $v.price;
      _price3kw = $v.price3kw;
      _unitMinutes = $v.unitMinutes;
      _minuteFrom = $v.minuteFrom;
      _minuteTo = $v.minuteTo;
      _unitType = $v.unitType;
      _unitValue = $v.unitValue;
      _kwhFrom = $v.kwhFrom;
      _kwhTo = $v.kwhTo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIPrice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$APIPrice;
  }

  @override
  void update(void Function(APIPriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIPrice build() => _build();

  _$APIPrice _build() {
    final _$result = _$v ??
        new _$APIPrice._(
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'APIPrice', 'price'),
            price3kw: price3kw,
            unitMinutes: BuiltValueNullFieldError.checkNotNull(
                unitMinutes, r'APIPrice', 'unitMinutes'),
            minuteFrom: BuiltValueNullFieldError.checkNotNull(
                minuteFrom, r'APIPrice', 'minuteFrom'),
            minuteTo: minuteTo,
            unitType: BuiltValueNullFieldError.checkNotNull(
                unitType, r'APIPrice', 'unitType'),
            unitValue: BuiltValueNullFieldError.checkNotNull(
                unitValue, r'APIPrice', 'unitValue'),
            kwhFrom: kwhFrom,
            kwhTo: kwhTo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
