// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_grouped_total_unit_prices_this_month_next_month_by_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIGroupedTotalUnitPricesThisMonthNextMonthByUser
    extends APIGroupedTotalUnitPricesThisMonthNextMonthByUser {
  @override
  final BuiltList<String>? chargerDeviceCodes;
  @override
  final String? power;
  @override
  final DateTime? expires;
  @override
  final BuiltList<APIMonthPrice>? monthPrices;

  factory _$APIGroupedTotalUnitPricesThisMonthNextMonthByUser(
          [void Function(
                  APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder)?
              updates]) =>
      (new APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder()
            ..update(updates))
          ._build();

  _$APIGroupedTotalUnitPricesThisMonthNextMonthByUser._(
      {this.chargerDeviceCodes, this.power, this.expires, this.monthPrices})
      : super._();

  @override
  APIGroupedTotalUnitPricesThisMonthNextMonthByUser rebuild(
          void Function(
                  APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder toBuilder() =>
      new APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIGroupedTotalUnitPricesThisMonthNextMonthByUser &&
        chargerDeviceCodes == other.chargerDeviceCodes &&
        power == other.power &&
        expires == other.expires &&
        monthPrices == other.monthPrices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chargerDeviceCodes.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, monthPrices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'APIGroupedTotalUnitPricesThisMonthNextMonthByUser')
          ..add('chargerDeviceCodes', chargerDeviceCodes)
          ..add('power', power)
          ..add('expires', expires)
          ..add('monthPrices', monthPrices))
        .toString();
  }
}

class APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder
    implements
        Builder<APIGroupedTotalUnitPricesThisMonthNextMonthByUser,
            APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder> {
  _$APIGroupedTotalUnitPricesThisMonthNextMonthByUser? _$v;

  ListBuilder<String>? _chargerDeviceCodes;
  ListBuilder<String> get chargerDeviceCodes =>
      _$this._chargerDeviceCodes ??= new ListBuilder<String>();
  set chargerDeviceCodes(ListBuilder<String>? chargerDeviceCodes) =>
      _$this._chargerDeviceCodes = chargerDeviceCodes;

  String? _power;
  String? get power => _$this._power;
  set power(String? power) => _$this._power = power;

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  ListBuilder<APIMonthPrice>? _monthPrices;
  ListBuilder<APIMonthPrice> get monthPrices =>
      _$this._monthPrices ??= new ListBuilder<APIMonthPrice>();
  set monthPrices(ListBuilder<APIMonthPrice>? monthPrices) =>
      _$this._monthPrices = monthPrices;

  APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder() {
    APIGroupedTotalUnitPricesThisMonthNextMonthByUser._defaults(this);
  }

  APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chargerDeviceCodes = $v.chargerDeviceCodes?.toBuilder();
      _power = $v.power;
      _expires = $v.expires;
      _monthPrices = $v.monthPrices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIGroupedTotalUnitPricesThisMonthNextMonthByUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$APIGroupedTotalUnitPricesThisMonthNextMonthByUser;
  }

  @override
  void update(
      void Function(APIGroupedTotalUnitPricesThisMonthNextMonthByUserBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  APIGroupedTotalUnitPricesThisMonthNextMonthByUser build() => _build();

  _$APIGroupedTotalUnitPricesThisMonthNextMonthByUser _build() {
    _$APIGroupedTotalUnitPricesThisMonthNextMonthByUser _$result;
    try {
      _$result = _$v ??
          new _$APIGroupedTotalUnitPricesThisMonthNextMonthByUser._(
              chargerDeviceCodes: _chargerDeviceCodes?.build(),
              power: power,
              expires: expires,
              monthPrices: _monthPrices?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chargerDeviceCodes';
        _chargerDeviceCodes?.build();

        _$failedField = 'monthPrices';
        _monthPrices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'APIGroupedTotalUnitPricesThisMonthNextMonthByUser',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
