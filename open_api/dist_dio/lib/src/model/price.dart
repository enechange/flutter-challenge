//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'price.g.dart';

/// Price
///
/// Properties:
/// * [price] 
/// * [price3kw] 
/// * [unitMinutes] - 課金の単位時間（unit_valueに移管するので使わない）
/// * [minuteFrom] 
/// * [minuteTo] 
/// * [unitType] - 単価が時間課金かkWh課金か
/// * [unitValue] - 課金の単位の数値（unit_typeがminuteでunit_valueが10なら10分あたり）
/// * [kwhFrom] 
/// * [kwhTo] 
@BuiltValue()
abstract class Price implements Built<Price, PriceBuilder> {
  @BuiltValueField(wireName: r'price')
  String get price;

  @BuiltValueField(wireName: r'price_3kw')
  String? get price3kw;

  /// 課金の単位時間（unit_valueに移管するので使わない）
  @Deprecated('unitMinutes has been deprecated')
  @BuiltValueField(wireName: r'unit_minutes')
  String get unitMinutes;

  @BuiltValueField(wireName: r'minute_from')
  num get minuteFrom;

  @BuiltValueField(wireName: r'minute_to')
  num? get minuteTo;

  /// 単価が時間課金かkWh課金か
  @BuiltValueField(wireName: r'unit_type')
  PriceUnitTypeEnum get unitType;
  // enum unitTypeEnum {  minute,  kwh,  };

  /// 課金の単位の数値（unit_typeがminuteでunit_valueが10なら10分あたり）
  @BuiltValueField(wireName: r'unit_value')
  String get unitValue;

  @BuiltValueField(wireName: r'kwh_from')
  num? get kwhFrom;

  @BuiltValueField(wireName: r'kwh_to')
  num? get kwhTo;

  Price._();

  factory Price([void updates(PriceBuilder b)]) = _$Price;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PriceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Price> get serializer => _$PriceSerializer();
}

class _$PriceSerializer implements PrimitiveSerializer<Price> {
  @override
  final Iterable<Type> types = const [Price, _$Price];

  @override
  final String wireName = r'Price';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Price object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(String),
    );
    if (object.price3kw != null) {
      yield r'price_3kw';
      yield serializers.serialize(
        object.price3kw,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'unit_minutes';
    yield serializers.serialize(
      object.unitMinutes,
      specifiedType: const FullType(String),
    );
    yield r'minute_from';
    yield serializers.serialize(
      object.minuteFrom,
      specifiedType: const FullType(num),
    );
    if (object.minuteTo != null) {
      yield r'minute_to';
      yield serializers.serialize(
        object.minuteTo,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'unit_type';
    yield serializers.serialize(
      object.unitType,
      specifiedType: const FullType(PriceUnitTypeEnum),
    );
    yield r'unit_value';
    yield serializers.serialize(
      object.unitValue,
      specifiedType: const FullType(String),
    );
    if (object.kwhFrom != null) {
      yield r'kwh_from';
      yield serializers.serialize(
        object.kwhFrom,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.kwhTo != null) {
      yield r'kwh_to';
      yield serializers.serialize(
        object.kwhTo,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Price object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PriceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.price = valueDes;
          break;
        case r'price_3kw':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.price3kw = valueDes;
          break;
        case r'unit_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitMinutes = valueDes;
          break;
        case r'minute_from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minuteFrom = valueDes;
          break;
        case r'minute_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minuteTo = valueDes;
          break;
        case r'unit_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PriceUnitTypeEnum),
          ) as PriceUnitTypeEnum;
          result.unitType = valueDes;
          break;
        case r'unit_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitValue = valueDes;
          break;
        case r'kwh_from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.kwhFrom = valueDes;
          break;
        case r'kwh_to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.kwhTo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Price deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PriceBuilder();
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

class PriceUnitTypeEnum extends EnumClass {

  /// 単価が時間課金かkWh課金か
  @BuiltValueEnumConst(wireName: r'minute')
  static const PriceUnitTypeEnum minute = _$priceUnitTypeEnum_minute;
  /// 単価が時間課金かkWh課金か
  @BuiltValueEnumConst(wireName: r'kwh')
  static const PriceUnitTypeEnum kwh = _$priceUnitTypeEnum_kwh;

  static Serializer<PriceUnitTypeEnum> get serializer => _$priceUnitTypeEnumSerializer;

  const PriceUnitTypeEnum._(String name): super(name);

  static BuiltSet<PriceUnitTypeEnum> get values => _$priceUnitTypeEnumValues;
  static PriceUnitTypeEnum valueOf(String name) => _$priceUnitTypeEnumValueOf(name);
}

