// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MonthPrice extends MonthPrice {
  @override
  final String month;
  @override
  final BuiltList<Price> prices;

  factory _$MonthPrice([void Function(MonthPriceBuilder)? updates]) =>
      (new MonthPriceBuilder()..update(updates))._build();

  _$MonthPrice._({required this.month, required this.prices}) : super._() {
    BuiltValueNullFieldError.checkNotNull(month, r'MonthPrice', 'month');
    BuiltValueNullFieldError.checkNotNull(prices, r'MonthPrice', 'prices');
  }

  @override
  MonthPrice rebuild(void Function(MonthPriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthPriceBuilder toBuilder() => new MonthPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthPrice &&
        month == other.month &&
        prices == other.prices;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, month.hashCode), prices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MonthPrice')
          ..add('month', month)
          ..add('prices', prices))
        .toString();
  }
}

class MonthPriceBuilder implements Builder<MonthPrice, MonthPriceBuilder> {
  _$MonthPrice? _$v;

  String? _month;
  String? get month => _$this._month;
  set month(String? month) => _$this._month = month;

  ListBuilder<Price>? _prices;
  ListBuilder<Price> get prices => _$this._prices ??= new ListBuilder<Price>();
  set prices(ListBuilder<Price>? prices) => _$this._prices = prices;

  MonthPriceBuilder() {
    MonthPrice._defaults(this);
  }

  MonthPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _month = $v.month;
      _prices = $v.prices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthPrice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MonthPrice;
  }

  @override
  void update(void Function(MonthPriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MonthPrice build() => _build();

  _$MonthPrice _build() {
    _$MonthPrice _$result;
    try {
      _$result = _$v ??
          new _$MonthPrice._(
              month: BuiltValueNullFieldError.checkNotNull(
                  month, r'MonthPrice', 'month'),
              prices: prices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prices';
        prices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MonthPrice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
