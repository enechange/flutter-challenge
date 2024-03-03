//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/month_price.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grouped_total_unit_prices_this_month_next_month.g.dart';

/// 同じ充電出力、単価でグルーピングされた単価。月によって単価が異なるため、25日以降は翌月も出力する
///
/// Properties:
/// * [chargerDeviceCodes] 
/// * [power] - 充電出力
/// * [monthPrices] - 最初の60分は無料といった単価設定に対応するため、配列で出力。
@BuiltValue()
abstract class GroupedTotalUnitPricesThisMonthNextMonth implements Built<GroupedTotalUnitPricesThisMonthNextMonth, GroupedTotalUnitPricesThisMonthNextMonthBuilder> {
  @BuiltValueField(wireName: r'charger_device_codes')
  BuiltList<String>? get chargerDeviceCodes;

  /// 充電出力
  @BuiltValueField(wireName: r'power')
  String? get power;

  /// 最初の60分は無料といった単価設定に対応するため、配列で出力。
  @BuiltValueField(wireName: r'month_prices')
  BuiltList<MonthPrice>? get monthPrices;

  GroupedTotalUnitPricesThisMonthNextMonth._();

  factory GroupedTotalUnitPricesThisMonthNextMonth([void updates(GroupedTotalUnitPricesThisMonthNextMonthBuilder b)]) = _$GroupedTotalUnitPricesThisMonthNextMonth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupedTotalUnitPricesThisMonthNextMonthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupedTotalUnitPricesThisMonthNextMonth> get serializer => _$GroupedTotalUnitPricesThisMonthNextMonthSerializer();
}

class _$GroupedTotalUnitPricesThisMonthNextMonthSerializer implements PrimitiveSerializer<GroupedTotalUnitPricesThisMonthNextMonth> {
  @override
  final Iterable<Type> types = const [GroupedTotalUnitPricesThisMonthNextMonth, _$GroupedTotalUnitPricesThisMonthNextMonth];

  @override
  final String wireName = r'GroupedTotalUnitPricesThisMonthNextMonth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupedTotalUnitPricesThisMonthNextMonth object, {
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
        specifiedType: const FullType(BuiltList, [FullType(MonthPrice)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupedTotalUnitPricesThisMonthNextMonth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupedTotalUnitPricesThisMonthNextMonthBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(MonthPrice)]),
          ) as BuiltList<MonthPrice>;
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
  GroupedTotalUnitPricesThisMonthNextMonth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupedTotalUnitPricesThisMonthNextMonthBuilder();
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

