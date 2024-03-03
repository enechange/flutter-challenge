// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gogoev_charger_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GogoevChargerDevice extends GogoevChargerDevice {
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

  factory _$GogoevChargerDevice(
          [void Function(GogoevChargerDeviceBuilder)? updates]) =>
      (new GogoevChargerDeviceBuilder()..update(updates))._build();

  _$GogoevChargerDevice._(
      {this.deviceTypes,
      this.power,
      required this.number,
      required this.fee,
      required this.authenticationNetworks,
      required this.authenticationApps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        number, r'GogoevChargerDevice', 'number');
    BuiltValueNullFieldError.checkNotNull(fee, r'GogoevChargerDevice', 'fee');
    BuiltValueNullFieldError.checkNotNull(authenticationNetworks,
        r'GogoevChargerDevice', 'authenticationNetworks');
    BuiltValueNullFieldError.checkNotNull(
        authenticationApps, r'GogoevChargerDevice', 'authenticationApps');
  }

  @override
  GogoevChargerDevice rebuild(
          void Function(GogoevChargerDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GogoevChargerDeviceBuilder toBuilder() =>
      new GogoevChargerDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GogoevChargerDevice &&
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
    return (newBuiltValueToStringHelper(r'GogoevChargerDevice')
          ..add('deviceTypes', deviceTypes)
          ..add('power', power)
          ..add('number', number)
          ..add('fee', fee)
          ..add('authenticationNetworks', authenticationNetworks)
          ..add('authenticationApps', authenticationApps))
        .toString();
  }
}

class GogoevChargerDeviceBuilder
    implements Builder<GogoevChargerDevice, GogoevChargerDeviceBuilder> {
  _$GogoevChargerDevice? _$v;

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

  GogoevChargerDeviceBuilder() {
    GogoevChargerDevice._defaults(this);
  }

  GogoevChargerDeviceBuilder get _$this {
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
  void replace(GogoevChargerDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GogoevChargerDevice;
  }

  @override
  void update(void Function(GogoevChargerDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GogoevChargerDevice build() => _build();

  _$GogoevChargerDevice _build() {
    _$GogoevChargerDevice _$result;
    try {
      _$result = _$v ??
          new _$GogoevChargerDevice._(
              deviceTypes: _deviceTypes?.build(),
              power: power,
              number: BuiltValueNullFieldError.checkNotNull(
                  number, r'GogoevChargerDevice', 'number'),
              fee: BuiltValueNullFieldError.checkNotNull(
                  fee, r'GogoevChargerDevice', 'fee'),
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
            r'GogoevChargerDevice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
