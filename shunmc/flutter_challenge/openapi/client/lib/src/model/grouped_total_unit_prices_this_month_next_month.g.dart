// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_total_unit_prices_this_month_next_month.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupedTotalUnitPricesThisMonthNextMonth
    extends GroupedTotalUnitPricesThisMonthNextMonth {
  @override
  final BuiltList<String>? chargerDeviceCodes;
  @override
  final String? power;
  @override
  final BuiltList<MonthPrice>? monthPrices;

  factory _$GroupedTotalUnitPricesThisMonthNextMonth(
          [void Function(GroupedTotalUnitPricesThisMonthNextMonthBuilder)?
              updates]) =>
      (new GroupedTotalUnitPricesThisMonthNextMonthBuilder()..update(updates))
          ._build();

  _$GroupedTotalUnitPricesThisMonthNextMonth._(
      {this.chargerDeviceCodes, this.power, this.monthPrices})
      : super._();

  @override
  GroupedTotalUnitPricesThisMonthNextMonth rebuild(
          void Function(GroupedTotalUnitPricesThisMonthNextMonthBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupedTotalUnitPricesThisMonthNextMonthBuilder toBuilder() =>
      new GroupedTotalUnitPricesThisMonthNextMonthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupedTotalUnitPricesThisMonthNextMonth &&
        chargerDeviceCodes == other.chargerDeviceCodes &&
        power == other.power &&
        monthPrices == other.monthPrices;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, chargerDeviceCodes.hashCode), power.hashCode),
        monthPrices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GroupedTotalUnitPricesThisMonthNextMonth')
          ..add('chargerDeviceCodes', chargerDeviceCodes)
          ..add('power', power)
          ..add('monthPrices', monthPrices))
        .toString();
  }
}

class GroupedTotalUnitPricesThisMonthNextMonthBuilder
    implements
        Builder<GroupedTotalUnitPricesThisMonthNextMonth,
            GroupedTotalUnitPricesThisMonthNextMonthBuilder> {
  _$GroupedTotalUnitPricesThisMonthNextMonth? _$v;

  ListBuilder<String>? _chargerDeviceCodes;
  ListBuilder<String> get chargerDeviceCodes =>
      _$this._chargerDeviceCodes ??= new ListBuilder<String>();
  set chargerDeviceCodes(ListBuilder<String>? chargerDeviceCodes) =>
      _$this._chargerDeviceCodes = chargerDeviceCodes;

  String? _power;
  String? get power => _$this._power;
  set power(String? power) => _$this._power = power;

  ListBuilder<MonthPrice>? _monthPrices;
  ListBuilder<MonthPrice> get monthPrices =>
      _$this._monthPrices ??= new ListBuilder<MonthPrice>();
  set monthPrices(ListBuilder<MonthPrice>? monthPrices) =>
      _$this._monthPrices = monthPrices;

  GroupedTotalUnitPricesThisMonthNextMonthBuilder() {
    GroupedTotalUnitPricesThisMonthNextMonth._defaults(this);
  }

  GroupedTotalUnitPricesThisMonthNextMonthBuilder get _$this {
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
  void replace(GroupedTotalUnitPricesThisMonthNextMonth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupedTotalUnitPricesThisMonthNextMonth;
  }

  @override
  void update(
      void Function(GroupedTotalUnitPricesThisMonthNextMonthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupedTotalUnitPricesThisMonthNextMonth build() => _build();

  _$GroupedTotalUnitPricesThisMonthNextMonth _build() {
    _$GroupedTotalUnitPricesThisMonthNextMonth _$result;
    try {
      _$result = _$v ??
          new _$GroupedTotalUnitPricesThisMonthNextMonth._(
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
            r'GroupedTotalUnitPricesThisMonthNextMonth',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
