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
    var _$hash = 0;
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, prices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
