// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_grouped_total_unit_prices_this_month_next_month.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIGroupedTotalUnitPricesThisMonthNextMonth
    extends APIGroupedTotalUnitPricesThisMonthNextMonth {
  @override
  final BuiltList<String>? chargerDeviceCodes;
  @override
  final String? power;
  @override
  final BuiltList<APIMonthPrice>? monthPrices;

  factory _$APIGroupedTotalUnitPricesThisMonthNextMonth(
          [void Function(APIGroupedTotalUnitPricesThisMonthNextMonthBuilder)?
              updates]) =>
      (new APIGroupedTotalUnitPricesThisMonthNextMonthBuilder()
            ..update(updates))
          ._build();

  _$APIGroupedTotalUnitPricesThisMonthNextMonth._(
      {this.chargerDeviceCodes, this.power, this.monthPrices})
      : super._();

  @override
  APIGroupedTotalUnitPricesThisMonthNextMonth rebuild(
          void Function(APIGroupedTotalUnitPricesThisMonthNextMonthBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIGroupedTotalUnitPricesThisMonthNextMonthBuilder toBuilder() =>
      new APIGroupedTotalUnitPricesThisMonthNextMonthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIGroupedTotalUnitPricesThisMonthNextMonth &&
        chargerDeviceCodes == other.chargerDeviceCodes &&
        power == other.power &&
        monthPrices == other.monthPrices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chargerDeviceCodes.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, monthPrices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'APIGroupedTotalUnitPricesThisMonthNextMonth')
          ..add('chargerDeviceCodes', chargerDeviceCodes)
          ..add('power', power)
          ..add('monthPrices', monthPrices))
        .toString();
  }
}

class APIGroupedTotalUnitPricesThisMonthNextMonthBuilder
    implements
        Builder<APIGroupedTotalUnitPricesThisMonthNextMonth,
            APIGroupedTotalUnitPricesThisMonthNextMonthBuilder> {
  _$APIGroupedTotalUnitPricesThisMonthNextMonth? _$v;

  ListBuilder<String>? _chargerDeviceCodes;
  ListBuilder<String> get chargerDeviceCodes =>
      _$this._chargerDeviceCodes ??= new ListBuilder<String>();
  set chargerDeviceCodes(ListBuilder<String>? chargerDeviceCodes) =>
      _$this._chargerDeviceCodes = chargerDeviceCodes;

  String? _power;
  String? get power => _$this._power;
  set power(String? power) => _$this._power = power;

  ListBuilder<APIMonthPrice>? _monthPrices;
  ListBuilder<APIMonthPrice> get monthPrices =>
      _$this._monthPrices ??= new ListBuilder<APIMonthPrice>();
  set monthPrices(ListBuilder<APIMonthPrice>? monthPrices) =>
      _$this._monthPrices = monthPrices;

  APIGroupedTotalUnitPricesThisMonthNextMonthBuilder() {
    APIGroupedTotalUnitPricesThisMonthNextMonth._defaults(this);
  }

  APIGroupedTotalUnitPricesThisMonthNextMonthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chargerDeviceCodes = $v.chargerDeviceCodes?.toBuilder();
      _power = $v.power;
      _monthPrices = $v.monthPrices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIGroupedTotalUnitPricesThisMonthNextMonth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$APIGroupedTotalUnitPricesThisMonthNextMonth;
  }

  @override
  void update(
      void Function(APIGroupedTotalUnitPricesThisMonthNextMonthBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  APIGroupedTotalUnitPricesThisMonthNextMonth build() => _build();

  _$APIGroupedTotalUnitPricesThisMonthNextMonth _build() {
    _$APIGroupedTotalUnitPricesThisMonthNextMonth _$result;
    try {
      _$result = _$v ??
          new _$APIGroupedTotalUnitPricesThisMonthNextMonth._(
              chargerDeviceCodes: _chargerDeviceCodes?.build(),
              power: power,
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
            r'APIGroupedTotalUnitPricesThisMonthNextMonth',
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
