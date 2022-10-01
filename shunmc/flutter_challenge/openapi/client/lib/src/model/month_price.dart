//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/price.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'month_price.g.dart';

/// MonthPrice
///
/// Properties:
/// * [month] 
/// * [prices] 
@BuiltValue()
abstract class MonthPrice implements Built<MonthPrice, MonthPriceBuilder> {
  @BuiltValueField(wireName: r'month')
  String get month;

  @BuiltValueField(wireName: r'prices')
  BuiltList<Price> get prices;

  MonthPrice._();

  factory MonthPrice([void updates(MonthPriceBuilder b)]) = _$MonthPrice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MonthPriceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MonthPrice> get serializer => _$MonthPriceSerializer();
}

class _$MonthPriceSerializer implements PrimitiveSerializer<MonthPrice> {
  @override
  final Iterable<Type> types = const [MonthPrice, _$MonthPrice];

  @override
  final String wireName = r'MonthPrice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MonthPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'month';
    yield serializers.serialize(
      object.month,
      specifiedType: const FullType(String),
    );
    yield r'prices';
    yield serializers.serialize(
      object.prices,
      specifiedType: const FullType(BuiltList, [FullType(Price)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MonthPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MonthPriceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.month = valueDes;
          break;
        case r'prices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Price)]),
          ) as BuiltList<Price>;
          result.prices.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MonthPrice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MonthPriceBuilder();
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

