// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChargerDeviceDisplayStatusEnum
    _$chargerDeviceDisplayStatusEnum_unavailableOrNoInfo =
    const ChargerDeviceDisplayStatusEnum._('unavailableOrNoInfo');
const ChargerDeviceDisplayStatusEnum _$chargerDeviceDisplayStatusEnum_inUse =
    const ChargerDeviceDisplayStatusEnum._('inUse');
const ChargerDeviceDisplayStatusEnum
    _$chargerDeviceDisplayStatusEnum_available =
    const ChargerDeviceDisplayStatusEnum._('available');
const ChargerDeviceDisplayStatusEnum
    _$chargerDeviceDisplayStatusEnum_unableToObtainInfo =
    const ChargerDeviceDisplayStatusEnum._('unableToObtainInfo');

ChargerDeviceDisplayStatusEnum _$chargerDeviceDisplayStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'unavailableOrNoInfo':
      return _$chargerDeviceDisplayStatusEnum_unavailableOrNoInfo;
    case 'inUse':
      return _$chargerDeviceDisplayStatusEnum_inUse;
    case 'available':
      return _$chargerDeviceDisplayStatusEnum_available;
    case 'unableToObtainInfo':
      return _$chargerDeviceDisplayStatusEnum_unableToObtainInfo;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChargerDeviceDisplayStatusEnum>
    _$chargerDeviceDisplayStatusEnumValues = new BuiltSet<
        ChargerDeviceDisplayStatusEnum>(const <ChargerDeviceDisplayStatusEnum>[
  _$chargerDeviceDisplayStatusEnum_unavailableOrNoInfo,
  _$chargerDeviceDisplayStatusEnum_inUse,
  _$chargerDeviceDisplayStatusEnum_available,
  _$chargerDeviceDisplayStatusEnum_unableToObtainInfo,
]);

Serializer<ChargerDeviceDisplayStatusEnum>
    _$chargerDeviceDisplayStatusEnumSerializer =
    new _$ChargerDeviceDisplayStatusEnumSerializer();

class _$ChargerDeviceDisplayStatusEnumSerializer
    implements PrimitiveSerializer<ChargerDeviceDisplayStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unavailableOrNoInfo': 'unavailable_or_no_info',
    'inUse': 'in_use',
    'available': 'available',
    'unableToObtainInfo': 'unable_to_obtain_info',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unavailable_or_no_info': 'unavailableOrNoInfo',
    'in_use': 'inUse',
    'available': 'available',
    'unable_to_obtain_info': 'unableToObtainInfo',
  };

  @override
  final Iterable<Type> types = const <Type>[ChargerDeviceDisplayStatusEnum];
  @override
  final String wireName = 'ChargerDeviceDisplayStatusEnum';

  @override
  Object serialize(
          Serializers serializers, ChargerDeviceDisplayStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChargerDeviceDisplayStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChargerDeviceDisplayStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChargerDevice extends ChargerDevice {
  @override
  final String name;
  @override
  final String code;
  @override
  final String makerCode;
  @override
  final String productCode;
  @override
  final String serialNumber;
  @override
  final String? serviceStartTime;
  @override
  final String? serviceEndTime;
  @override
  final String? allowCurrent;
  @override
  final String? maxChargeTime;
  @override
  final num latitude;
  @override
  final num longitude;
  @override
  final ChargerDeviceDisplayStatusEnum displayStatus;
  @override
  final String power;
  @override
  final String fee;
  @override
  final String? lastUpdated;

  factory _$ChargerDevice([void Function(ChargerDeviceBuilder)? updates]) =>
      (new ChargerDeviceBuilder()..update(updates))._build();

  _$ChargerDevice._(
      {required this.name,
      required this.code,
      required this.makerCode,
      required this.productCode,
      required this.serialNumber,
      this.serviceStartTime,
      this.serviceEndTime,
      this.allowCurrent,
      this.maxChargeTime,
      required this.latitude,
      required this.longitude,
      required this.displayStatus,
      required this.power,
      required this.fee,
      this.lastUpdated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'ChargerDevice', 'name');
    BuiltValueNullFieldError.checkNotNull(code, r'ChargerDevice', 'code');
    BuiltValueNullFieldError.checkNotNull(
        makerCode, r'ChargerDevice', 'makerCode');
    BuiltValueNullFieldError.checkNotNull(
        productCode, r'ChargerDevice', 'productCode');
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'ChargerDevice', 'serialNumber');
    BuiltValueNullFieldError.checkNotNull(
        latitude, r'ChargerDevice', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, r'ChargerDevice', 'longitude');
    BuiltValueNullFieldError.checkNotNull(
        displayStatus, r'ChargerDevice', 'displayStatus');
    BuiltValueNullFieldError.checkNotNull(power, r'ChargerDevice', 'power');
    BuiltValueNullFieldError.checkNotNull(fee, r'ChargerDevice', 'fee');
  }

  @override
  ChargerDevice rebuild(void Function(ChargerDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChargerDeviceBuilder toBuilder() => new ChargerDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChargerDevice &&
        name == other.name &&
        code == other.code &&
        makerCode == other.makerCode &&
        productCode == other.productCode &&
        serialNumber == other.serialNumber &&
        serviceStartTime == other.serviceStartTime &&
        serviceEndTime == other.serviceEndTime &&
        allowCurrent == other.allowCurrent &&
        maxChargeTime == other.maxChargeTime &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        displayStatus == other.displayStatus &&
        power == other.power &&
        fee == other.fee &&
        lastUpdated == other.lastUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, makerCode.hashCode);
    _$hash = $jc(_$hash, productCode.hashCode);
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, serviceStartTime.hashCode);
    _$hash = $jc(_$hash, serviceEndTime.hashCode);
    _$hash = $jc(_$hash, allowCurrent.hashCode);
    _$hash = $jc(_$hash, maxChargeTime.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, displayStatus.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, fee.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChargerDevice')
          ..add('name', name)
          ..add('code', code)
          ..add('makerCode', makerCode)
          ..add('productCode', productCode)
          ..add('serialNumber', serialNumber)
          ..add('serviceStartTime', serviceStartTime)
          ..add('serviceEndTime', serviceEndTime)
          ..add('allowCurrent', allowCurrent)
          ..add('maxChargeTime', maxChargeTime)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('displayStatus', displayStatus)
          ..add('power', power)
          ..add('fee', fee)
          ..add('lastUpdated', lastUpdated))
        .toString();
  }
}

class ChargerDeviceBuilder
    implements Builder<ChargerDevice, ChargerDeviceBuilder> {
  _$ChargerDevice? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _makerCode;
  String? get makerCode => _$this._makerCode;
  set makerCode(String? makerCode) => _$this._makerCode = makerCode;

  String? _productCode;
  String? get productCode => _$this._productCode;
  set productCode(String? productCode) => _$this._productCode = productCode;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  String? _serviceStartTime;
  String? get serviceStartTime => _$this._serviceStartTime;
  set serviceStartTime(String? serviceStartTime) =>
      _$this._serviceStartTime = serviceStartTime;

  String? _serviceEndTime;
  String? get serviceEndTime => _$this._serviceEndTime;
  set serviceEndTime(String? serviceEndTime) =>
      _$this._serviceEndTime = serviceEndTime;

  String? _allowCurrent;
  String? get allowCurrent => _$this._allowCurrent;
  set allowCurrent(String? allowCurrent) => _$this._allowCurrent = allowCurrent;

  String? _maxChargeTime;
  String? get maxChargeTime => _$this._maxChargeTime;
  set maxChargeTime(String? maxChargeTime) =>
      _$this._maxChargeTime = maxChargeTime;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  ChargerDeviceDisplayStatusEnum? _displayStatus;
  ChargerDeviceDisplayStatusEnum? get displayStatus => _$this._displayStatus;
  set displayStatus(ChargerDeviceDisplayStatusEnum? displayStatus) =>
      _$this._displayStatus = displayStatus;

  String? _power;
  String? get power => _$this._power;
  set power(String? power) => _$this._power = power;

  String? _fee;
  String? get fee => _$this._fee;
  set fee(String? fee) => _$this._fee = fee;

  String? _lastUpdated;
  String? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(String? lastUpdated) => _$this._lastUpdated = lastUpdated;

  ChargerDeviceBuilder() {
    ChargerDevice._defaults(this);
  }

  ChargerDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _code = $v.code;
      _makerCode = $v.makerCode;
      _productCode = $v.productCode;
      _serialNumber = $v.serialNumber;
      _serviceStartTime = $v.serviceStartTime;
      _serviceEndTime = $v.serviceEndTime;
      _allowCurrent = $v.allowCurrent;
      _maxChargeTime = $v.maxChargeTime;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _displayStatus = $v.displayStatus;
      _power = $v.power;
      _fee = $v.fee;
      _lastUpdated = $v.lastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChargerDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChargerDevice;
  }

  @override
  void update(void Function(ChargerDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChargerDevice build() => _build();

  _$ChargerDevice _build() {
    final _$result = _$v ??
        new _$ChargerDevice._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ChargerDevice', 'name'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'ChargerDevice', 'code'),
            makerCode: BuiltValueNullFieldError.checkNotNull(
                makerCode, r'ChargerDevice', 'makerCode'),
            productCode: BuiltValueNullFieldError.checkNotNull(
                productCode, r'ChargerDevice', 'productCode'),
            serialNumber: BuiltValueNullFieldError.checkNotNull(
                serialNumber, r'ChargerDevice', 'serialNumber'),
            serviceStartTime: serviceStartTime,
            serviceEndTime: serviceEndTime,
            allowCurrent: allowCurrent,
            maxChargeTime: maxChargeTime,
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, r'ChargerDevice', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, r'ChargerDevice', 'longitude'),
            displayStatus: BuiltValueNullFieldError.checkNotNull(
                displayStatus, r'ChargerDevice', 'displayStatus'),
            power: BuiltValueNullFieldError.checkNotNull(
                power, r'ChargerDevice', 'power'),
            fee:
                BuiltValueNullFieldError.checkNotNull(fee, r'ChargerDevice', 'fee'),
            lastUpdated: lastUpdated);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
