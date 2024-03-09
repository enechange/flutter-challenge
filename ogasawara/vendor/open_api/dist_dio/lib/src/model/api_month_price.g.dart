// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_month_price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIMonthPrice extends APIMonthPrice {
  @override
  final String month;
  @override
  final BuiltList<APIPrice> prices;

  factory _$APIMonthPrice([void Function(APIMonthPriceBuilder)? updates]) =>
      (new APIMonthPriceBuilder()..update(updates))._build();

  _$APIMonthPrice._({required this.month, required this.prices}) : super._() {
    BuiltValueNullFieldError.checkNotNull(month, r'APIMonthPrice', 'month');
    BuiltValueNullFieldError.checkNotNull(prices, r'APIMonthPrice', 'prices');
  }

  @override
  APIMonthPrice rebuild(void Function(APIMonthPriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIMonthPriceBuilder toBuilder() => new APIMonthPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIMonthPrice &&
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
    return (newBuiltValueToStringHelper(r'APIMonthPrice')
          ..add('month', month)
          ..add('prices', prices))
        .toString();
  }
}

class APIMonthPriceBuilder
    implements Builder<APIMonthPrice, APIMonthPriceBuilder> {
  _$APIMonthPrice? _$v;

  String? _month;
  String? get month => _$this._month;
  set month(String? month) => _$this._month = month;

  ListBuilder<APIPrice>? _prices;
  ListBuilder<APIPrice> get prices =>
      _$this._prices ??= new ListBuilder<APIPrice>();
  set prices(ListBuilder<APIPrice>? prices) => _$this._prices = prices;

  APIMonthPriceBuilder() {
    APIMonthPrice._defaults(this);
  }

  APIMonthPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _month = $v.month;
      _prices = $v.prices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIMonthPrice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$APIMonthPrice;
  }

  @override
  void update(void Function(APIMonthPriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIMonthPrice build() => _build();

  _$APIMonthPrice _build() {
    _$APIMonthPrice _$result;
    try {
      _$result = _$v ??
          new _$APIMonthPrice._(
              month: BuiltValueNullFieldError.checkNotNull(
                  month, r'APIMonthPrice', 'month'),
              prices: prices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prices';
        prices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'APIMonthPrice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
