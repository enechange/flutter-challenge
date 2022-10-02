//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/month_price.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grouped_total_unit_prices_this_month_next_month_by_user.g.dart';

/// 同じ充電出力、単価でグルーピングされた単価。月によって単価が異なるため、25日以降は翌月も出力する
///
/// Properties:
/// * [chargerDeviceCodes] 
/// * [power] - 充電出力
/// * [expires] - 適用期限
/// * [monthPrices] - 最初の60分は無料といった単価設定に対応するため、配列で出力。
@BuiltValue()
abstract class GroupedTotalUnitPricesThisMonthNextMonthByUser implements Built<GroupedTotalUnitPricesThisMonthNextMonthByUser, GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder> {
  @BuiltValueField(wireName: r'charger_device_codes')
  BuiltList<String>? get chargerDeviceCodes;

  /// 充電出力
  @BuiltValueField(wireName: r'power')
  String? get power;

  /// 適用期限
  @BuiltValueField(wireName: r'expires')
  DateTime? get expires;

  /// 最初の60分は無料といった単価設定に対応するため、配列で出力。
  @BuiltValueField(wireName: r'month_prices')
  BuiltList<MonthPrice>? get monthPrices;

  GroupedTotalUnitPricesThisMonthNextMonthByUser._();

  factory GroupedTotalUnitPricesThisMonthNextMonthByUser([void updates(GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder b)]) = _$GroupedTotalUnitPricesThisMonthNextMonthByUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupedTotalUnitPricesThisMonthNextMonthByUser> get serializer => _$GroupedTotalUnitPricesThisMonthNextMonthByUserSerializer();
}

class _$GroupedTotalUnitPricesThisMonthNextMonthByUserSerializer implements PrimitiveSerializer<GroupedTotalUnitPricesThisMonthNextMonthByUser> {
  @override
  final Iterable<Type> types = const [GroupedTotalUnitPricesThisMonthNextMonthByUser, _$GroupedTotalUnitPricesThisMonthNextMonthByUser];

  @override
  final String wireName = r'GroupedTotalUnitPricesThisMonthNextMonthByUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupedTotalUnitPricesThisMonthNextMonthByUser object, {
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
    if (object.expires != null) {
      yield r'expires';
      yield serializers.serialize(
        object.expires,
        specifiedType: const FullType(DateTime),
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
    GroupedTotalUnitPricesThisMonthNextMonthByUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder result,
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
        case r'expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expires = valueDes;
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
  GroupedTotalUnitPricesThisMonthNextMonthByUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupedTotalUnitPricesThisMonthNextMonthByUserBuilder();
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
