// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_total_unit_prices_this_month_next_month_by_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupedTotalUnitPricesThisMonthNextMonthByUser
    extends GroupedTotalUnitPricesThisMonthNextMonthByUser {
  @override
  final BuiltList<String>? chargerDeviceCodes;
  @override
  final String? power;
  @override
  final DateTime? expires;
  @override
  final BuiltList<MonthPrice>? monthPrices;

  factory _$GroupedTotalUnitPricesThisMonthNextMonthByUser(
          [void Function(GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder)?
              updates]) =>
      (new GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder()
            ..update(updates))
          ._build();

  _$GroupedTotalUnitPricesThisMonthNextMonthByUser._(
      {this.chargerDeviceCodes, this.power, this.expires, this.monthPrices})
      : super._();

  @override
  GroupedTotalUnitPricesThisMonthNextMonthByUser rebuild(
          void Function(GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder toBuilder() =>
      new GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupedTotalUnitPricesThisMonthNextMonthByUser &&
        chargerDeviceCodes == other.chargerDeviceCodes &&
        power == other.power &&
        expires == other.expires &&
        monthPrices == other.monthPrices;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, chargerDeviceCodes.hashCode), power.hashCode),
            expires.hashCode),
        monthPrices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GroupedTotalUnitPricesThisMonthNextMonthByUser')
          ..add('chargerDeviceCodes', chargerDeviceCodes)
          ..add('power', power)
          ..add('expires', expires)
          ..add('monthPrices', monthPrices))
        .toString();
  }
}

class GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder
    implements
        Builder<GroupedTotalUnitPricesThisMonthNextMonthByUser,
            GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder> {
  _$GroupedTotalUnitPricesThisMonthNextMonthByUser? _$v;

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

  ListBuilder<MonthPrice>? _monthPrices;
  ListBuilder<MonthPrice> get monthPrices =>
      _$this._monthPrices ??= new ListBuilder<MonthPrice>();
  set monthPrices(ListBuilder<MonthPrice>? monthPrices) =>
      _$this._monthPrices = monthPrices;

  GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder() {
    GroupedTotalUnitPricesThisMonthNextMonthByUser._defaults(this);
  }

  GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder get _$this {
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
  void replace(GroupedTotalUnitPricesThisMonthNextMonthByUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupedTotalUnitPricesThisMonthNextMonthByUser;
  }

  @override
  void update(
      void Function(GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupedTotalUnitPricesThisMonthNextMonthByUser build() => _build();

  _$GroupedTotalUnitPricesThisMonthNextMonthByUser _build() {
    _$GroupedTotalUnitPricesThisMonthNextMonthByUser _$result;
    try {
      _$result = _$v ??
          new _$GroupedTotalUnitPricesThisMonthNextMonthByUser._(
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
            r'GroupedTotalUnitPricesThisMonthNextMonthByUser',
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
