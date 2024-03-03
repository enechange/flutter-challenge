// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PriceUnitTypeEnum _$priceUnitTypeEnum_minute =
    const PriceUnitTypeEnum._('minute');
const PriceUnitTypeEnum _$priceUnitTypeEnum_kwh =
    const PriceUnitTypeEnum._('kwh');

PriceUnitTypeEnum _$priceUnitTypeEnumValueOf(String name) {
  switch (name) {
    case 'minute':
      return _$priceUnitTypeEnum_minute;
    case 'kwh':
      return _$priceUnitTypeEnum_kwh;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PriceUnitTypeEnum> _$priceUnitTypeEnumValues =
    new BuiltSet<PriceUnitTypeEnum>(const <PriceUnitTypeEnum>[
  _$priceUnitTypeEnum_minute,
  _$priceUnitTypeEnum_kwh,
]);

Serializer<PriceUnitTypeEnum> _$priceUnitTypeEnumSerializer =
    new _$PriceUnitTypeEnumSerializer();

class _$PriceUnitTypeEnumSerializer
    implements PrimitiveSerializer<PriceUnitTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'minute': 'minute',
    'kwh': 'kwh',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'minute': 'minute',
    'kwh': 'kwh',
  };

  @override
  final Iterable<Type> types = const <Type>[PriceUnitTypeEnum];
  @override
  final String wireName = 'PriceUnitTypeEnum';

  @override
  Object serialize(Serializers serializers, PriceUnitTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PriceUnitTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PriceUnitTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Price extends Price {
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
  final PriceUnitTypeEnum unitType;
  @override
  final String unitValue;
  @override
  final num? kwhFrom;
  @override
  final num? kwhTo;

  factory _$Price([void Function(PriceBuilder)? updates]) =>
      (new PriceBuilder()..update(updates))._build();

  _$Price._(
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
    BuiltValueNullFieldError.checkNotNull(price, r'Price', 'price');
    BuiltValueNullFieldError.checkNotNull(unitMinutes, r'Price', 'unitMinutes');
    BuiltValueNullFieldError.checkNotNull(minuteFrom, r'Price', 'minuteFrom');
    BuiltValueNullFieldError.checkNotNull(unitType, r'Price', 'unitType');
    BuiltValueNullFieldError.checkNotNull(unitValue, r'Price', 'unitValue');
  }

  @override
  Price rebuild(void Function(PriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PriceBuilder toBuilder() => new PriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Price &&
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
    return (newBuiltValueToStringHelper(r'Price')
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

class PriceBuilder implements Builder<Price, PriceBuilder> {
  _$Price? _$v;

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

  PriceUnitTypeEnum? _unitType;
  PriceUnitTypeEnum? get unitType => _$this._unitType;
  set unitType(PriceUnitTypeEnum? unitType) => _$this._unitType = unitType;

  String? _unitValue;
  String? get unitValue => _$this._unitValue;
  set unitValue(String? unitValue) => _$this._unitValue = unitValue;

  num? _kwhFrom;
  num? get kwhFrom => _$this._kwhFrom;
  set kwhFrom(num? kwhFrom) => _$this._kwhFrom = kwhFrom;

  num? _kwhTo;
  num? get kwhTo => _$this._kwhTo;
  set kwhTo(num? kwhTo) => _$this._kwhTo = kwhTo;

  PriceBuilder() {
    Price._defaults(this);
  }

  PriceBuilder get _$this {
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
  void replace(Price other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Price;
  }

  @override
  void update(void Function(PriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Price build() => _build();

  _$Price _build() {
    final _$result = _$v ??
        new _$Price._(
            price:
                BuiltValueNullFieldError.checkNotNull(price, r'Price', 'price'),
            price3kw: price3kw,
            unitMinutes: BuiltValueNullFieldError.checkNotNull(
                unitMinutes, r'Price', 'unitMinutes'),
            minuteFrom: BuiltValueNullFieldError.checkNotNull(
                minuteFrom, r'Price', 'minuteFrom'),
            minuteTo: minuteTo,
            unitType: BuiltValueNullFieldError.checkNotNull(
                unitType, r'Price', 'unitType'),
            unitValue: BuiltValueNullFieldError.checkNotNull(
                unitValue, r'Price', 'unitValue'),
            kwhFrom: kwhFrom,
            kwhTo: kwhTo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
