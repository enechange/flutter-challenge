//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/api_month_price.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_grouped_total_unit_prices_this_month_next_month.g.dart';

/// 同じ充電出力、単価でグルーピングされた単価。月によって単価が異なるため、25日以降は翌月も出力する
///
/// Properties:
/// * [chargerDeviceCodes] 
/// * [power] - 充電出力
/// * [monthPrices] - 最初の60分は無料といった単価設定に対応するため、配列で出力。
@BuiltValue()
abstract class APIGroupedTotalUnitPricesThisMonthNextMonth implements Built<APIGroupedTotalUnitPricesThisMonthNextMonth, APIGroupedTotalUnitPricesThisMonthNextMonthBuilder> {
  @BuiltValueField(wireName: r'charger_device_codes')
  BuiltList<String>? get chargerDeviceCodes;

  /// 充電出力
  @BuiltValueField(wireName: r'power')
  String? get power;

  /// 最初の60分は無料といった単価設定に対応するため、配列で出力。
  @BuiltValueField(wireName: r'month_prices')
  BuiltList<APIMonthPrice>? get monthPrices;

  APIGroupedTotalUnitPricesThisMonthNextMonth._();

  factory APIGroupedTotalUnitPricesThisMonthNextMonth([void updates(APIGroupedTotalUnitPricesThisMonthNextMonthBuilder b)]) = _$APIGroupedTotalUnitPricesThisMonthNextMonth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIGroupedTotalUnitPricesThisMonthNextMonthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIGroupedTotalUnitPricesThisMonthNextMonth> get serializer => _$APIGroupedTotalUnitPricesThisMonthNextMonthSerializer();
}

class _$APIGroupedTotalUnitPricesThisMonthNextMonthSerializer implements PrimitiveSerializer<APIGroupedTotalUnitPricesThisMonthNextMonth> {
  @override
  final Iterable<Type> types = const [APIGroupedTotalUnitPricesThisMonthNextMonth, _$APIGroupedTotalUnitPricesThisMonthNextMonth];

  @override
  final String wireName = r'APIGroupedTotalUnitPricesThisMonthNextMonth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIGroupedTotalUnitPricesThisMonthNextMonth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.chargerDeviceCodes != null) {
      yield r'charger_device_codes';
      yield serializers.serialize(
        object.chargerDeviceCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.power != null) {
      yield r'power';
      yield serializers.serialize(
        object.power,
        specifiedType: const FullType(String),
      );
    }
    if (object.monthPrices != null) {
      yield r'month_prices';
      yield serializers.serialize(
        object.monthPrices,
        specifiedType: const FullType(BuiltList, [FullType(APIMonthPrice)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    APIGroupedTotalUnitPricesThisMonthNextMonth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIGroupedTotalUnitPricesThisMonthNextMonthBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'charger_device_codes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.chargerDeviceCodes.replace(valueDes);
          break;
        case r'power':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.power = valueDes;
          break;
        case r'month_prices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(APIMonthPrice)]),
          ) as BuiltList<APIMonthPrice>;
          result.monthPrices.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  APIGroupedTotalUnitPricesThisMonthNextMonth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIGroupedTotalUnitPricesThisMonthNextMonthBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

