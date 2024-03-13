// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_charger_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const APIChargerDeviceDisplayStatusEnum
    _$aPIChargerDeviceDisplayStatusEnum_unavailableOrNoInfo =
    const APIChargerDeviceDisplayStatusEnum._('unavailableOrNoInfo');
const APIChargerDeviceDisplayStatusEnum
    _$aPIChargerDeviceDisplayStatusEnum_inUse =
    const APIChargerDeviceDisplayStatusEnum._('inUse');
const APIChargerDeviceDisplayStatusEnum
    _$aPIChargerDeviceDisplayStatusEnum_available =
    const APIChargerDeviceDisplayStatusEnum._('available');
const APIChargerDeviceDisplayStatusEnum
    _$aPIChargerDeviceDisplayStatusEnum_unableToObtainInfo =
    const APIChargerDeviceDisplayStatusEnum._('unableToObtainInfo');

APIChargerDeviceDisplayStatusEnum _$aPIChargerDeviceDisplayStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'unavailableOrNoInfo':
      return _$aPIChargerDeviceDisplayStatusEnum_unavailableOrNoInfo;
    case 'inUse':
      return _$aPIChargerDeviceDisplayStatusEnum_inUse;
    case 'available':
      return _$aPIChargerDeviceDisplayStatusEnum_available;
    case 'unableToObtainInfo':
      return _$aPIChargerDeviceDisplayStatusEnum_unableToObtainInfo;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<APIChargerDeviceDisplayStatusEnum>
    _$aPIChargerDeviceDisplayStatusEnumValues = new BuiltSet<
        APIChargerDeviceDisplayStatusEnum>(const <APIChargerDeviceDisplayStatusEnum>[
  _$aPIChargerDeviceDisplayStatusEnum_unavailableOrNoInfo,
  _$aPIChargerDeviceDisplayStatusEnum_inUse,
  _$aPIChargerDeviceDisplayStatusEnum_available,
  _$aPIChargerDeviceDisplayStatusEnum_unableToObtainInfo,
]);

Serializer<APIChargerDeviceDisplayStatusEnum>
    _$aPIChargerDeviceDisplayStatusEnumSerializer =
    new _$APIChargerDeviceDisplayStatusEnumSerializer();

class _$APIChargerDeviceDisplayStatusEnumSerializer
    implements PrimitiveSerializer<APIChargerDeviceDisplayStatusEnum> {
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
  final Iterable<Type> types = const <Type>[APIChargerDeviceDisplayStatusEnum];
  @override
  final String wireName = 'APIChargerDeviceDisplayStatusEnum';

  @override
  Object serialize(
          Serializers serializers, APIChargerDeviceDisplayStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  APIChargerDeviceDisplayStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      APIChargerDeviceDisplayStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$APIChargerDevice extends APIChargerDevice {
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
  final APIChargerDeviceDisplayStatusEnum displayStatus;
  @override
  final String power;
  @override
  final String fee;
  @override
  final String? lastUpdated;

  factory _$APIChargerDevice(
          [void Function(APIChargerDeviceBuilder)? updates]) =>
      (new APIChargerDeviceBuilder()..update(updates))._build();

  _$APIChargerDevice._(
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
    BuiltValueNullFieldError.checkNotNull(name, r'APIChargerDevice', 'name');
    BuiltValueNullFieldError.checkNotNull(code, r'APIChargerDevice', 'code');
    BuiltValueNullFieldError.checkNotNull(
        makerCode, r'APIChargerDevice', 'makerCode');
    BuiltValueNullFieldError.checkNotNull(
        productCode, r'APIChargerDevice', 'productCode');
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'APIChargerDevice', 'serialNumber');
    BuiltValueNullFieldError.checkNotNull(
        latitude, r'APIChargerDevice', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, r'APIChargerDevice', 'longitude');
    BuiltValueNullFieldError.checkNotNull(
        displayStatus, r'APIChargerDevice', 'displayStatus');
    BuiltValueNullFieldError.checkNotNull(power, r'APIChargerDevice', 'power');
    BuiltValueNullFieldError.checkNotNull(fee, r'APIChargerDevice', 'fee');
  }

  @override
  APIChargerDevice rebuild(void Function(APIChargerDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIChargerDeviceBuilder toBuilder() =>
      new APIChargerDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIChargerDevice &&
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
    return (newBuiltValueToStringHelper(r'APIChargerDevice')
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

class APIChargerDeviceBuilder
    implements Builder<APIChargerDevice, APIChargerDeviceBuilder> {
  _$APIChargerDevice? _$v;

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

  APIChargerDeviceDisplayStatusEnum? _displayStatus;
  APIChargerDeviceDisplayStatusEnum? get displayStatus => _$this._displayStatus;
  set displayStatus(APIChargerDeviceDisplayStatusEnum? displayStatus) =>
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

  APIChargerDeviceBuilder() {
    APIChargerDevice._defaults(this);
  }

  APIChargerDeviceBuilder get _$this {
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
  void replace(APIChargerDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$APIChargerDevice;
  }

  @override
  void update(void Function(APIChargerDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIChargerDevice build() => _build();

  _$APIChargerDevice _build() {
    final _$result = _$v ??
        new _$APIChargerDevice._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'APIChargerDevice', 'name'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'APIChargerDevice', 'code'),
            makerCode: BuiltValueNullFieldError.checkNotNull(
                makerCode, r'APIChargerDevice', 'makerCode'),
            productCode: BuiltValueNullFieldError.checkNotNull(
                productCode, r'APIChargerDevice', 'productCode'),
            serialNumber: BuiltValueNullFieldError.checkNotNull(
                serialNumber, r'APIChargerDevice', 'serialNumber'),
            serviceStartTime: serviceStartTime,
            serviceEndTime: serviceEndTime,
            allowCurrent: allowCurrent,
            maxChargeTime: maxChargeTime,
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, r'APIChargerDevice', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, r'APIChargerDevice', 'longitude'),
            displayStatus: BuiltValueNullFieldError.checkNotNull(
                displayStatus, r'APIChargerDevice', 'displayStatus'),
            power: BuiltValueNullFieldError.checkNotNull(
                power, r'APIChargerDevice', 'power'),
            fee: BuiltValueNullFieldError.checkNotNull(fee, r'APIChargerDevice', 'fee'),
            lastUpdated: lastUpdated);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
