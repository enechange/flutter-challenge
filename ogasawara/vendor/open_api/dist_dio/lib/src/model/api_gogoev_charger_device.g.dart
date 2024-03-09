// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_gogoev_charger_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIGogoevChargerDevice extends APIGogoevChargerDevice {
  @override
  final BuiltList<String>? deviceTypes;
  @override
  final String? power;
  @override
  final num number;
  @override
  final String fee;
  @override
  final BuiltList<String> authenticationNetworks;
  @override
  final BuiltList<String> authenticationApps;

  factory _$APIGogoevChargerDevice(
          [void Function(APIGogoevChargerDeviceBuilder)? updates]) =>
      (new APIGogoevChargerDeviceBuilder()..update(updates))._build();

  _$APIGogoevChargerDevice._(
      {this.deviceTypes,
      this.power,
      required this.number,
      required this.fee,
      required this.authenticationNetworks,
      required this.authenticationApps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        number, r'APIGogoevChargerDevice', 'number');
    BuiltValueNullFieldError.checkNotNull(
        fee, r'APIGogoevChargerDevice', 'fee');
    BuiltValueNullFieldError.checkNotNull(authenticationNetworks,
        r'APIGogoevChargerDevice', 'authenticationNetworks');
    BuiltValueNullFieldError.checkNotNull(
        authenticationApps, r'APIGogoevChargerDevice', 'authenticationApps');
  }

  @override
  APIGogoevChargerDevice rebuild(
          void Function(APIGogoevChargerDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIGogoevChargerDeviceBuilder toBuilder() =>
      new APIGogoevChargerDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIGogoevChargerDevice &&
        deviceTypes == other.deviceTypes &&
        power == other.power &&
        number == other.number &&
        fee == other.fee &&
        authenticationNetworks == other.authenticationNetworks &&
        authenticationApps == other.authenticationApps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceTypes.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, fee.hashCode);
    _$hash = $jc(_$hash, authenticationNetworks.hashCode);
    _$hash = $jc(_$hash, authenticationApps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'APIGogoevChargerDevice')
          ..add('deviceTypes', deviceTypes)
          ..add('power', power)
          ..add('number', number)
          ..add('fee', fee)
          ..add('authenticationNetworks', authenticationNetworks)
          ..add('authenticationApps', authenticationApps))
        .toString();
  }
}

class APIGogoevChargerDeviceBuilder
    implements Builder<APIGogoevChargerDevice, APIGogoevChargerDeviceBuilder> {
  _$APIGogoevChargerDevice? _$v;

  ListBuilder<String>? _deviceTypes;
  ListBuilder<String> get deviceTypes =>
      _$this._deviceTypes ??= new ListBuilder<String>();
  set deviceTypes(ListBuilder<String>? deviceTypes) =>
      _$this._deviceTypes = deviceTypes;

  String? _power;
  String? get power => _$this._power;
  set power(String? power) => _$this._power = power;

  num? _number;
  num? get number => _$this._number;
  set number(num? number) => _$this._number = number;

  String? _fee;
  String? get fee => _$this._fee;
  set fee(String? fee) => _$this._fee = fee;

  ListBuilder<String>? _authenticationNetworks;
  ListBuilder<String> get authenticationNetworks =>
      _$this._authenticationNetworks ??= new ListBuilder<String>();
  set authenticationNetworks(ListBuilder<String>? authenticationNetworks) =>
      _$this._authenticationNetworks = authenticationNetworks;

  ListBuilder<String>? _authenticationApps;
  ListBuilder<String> get authenticationApps =>
      _$this._authenticationApps ??= new ListBuilder<String>();
  set authenticationApps(ListBuilder<String>? authenticationApps) =>
      _$this._authenticationApps = authenticationApps;

  APIGogoevChargerDeviceBuilder() {
    APIGogoevChargerDevice._defaults(this);
  }

  APIGogoevChargerDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceTypes = $v.deviceTypes?.toBuilder();
      _power = $v.power;
      _number = $v.number;
      _fee = $v.fee;
      _authenticationNetworks = $v.authenticationNetworks.toBuilder();
      _authenticationApps = $v.authenticationApps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIGogoevChargerDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$APIGogoevChargerDevice;
  }

  @override
  void update(void Function(APIGogoevChargerDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIGogoevChargerDevice build() => _build();

  _$APIGogoevChargerDevice _build() {
    _$APIGogoevChargerDevice _$result;
    try {
      _$result = _$v ??
          new _$APIGogoevChargerDevice._(
              deviceTypes: _deviceTypes?.build(),
              power: power,
              number: BuiltValueNullFieldError.checkNotNull(
                  number, r'APIGogoevChargerDevice', 'number'),
              fee: BuiltValueNullFieldError.checkNotNull(
                  fee, r'APIGogoevChargerDevice', 'fee'),
              authenticationNetworks: authenticationNetworks.build(),
              authenticationApps: authenticationApps.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deviceTypes';
        _deviceTypes?.build();

        _$failedField = 'authenticationNetworks';
        authenticationNetworks.build();
        _$failedField = 'authenticationApps';
        authenticationApps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'APIGogoevChargerDevice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
