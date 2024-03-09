//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/api_price.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_month_price.g.dart';

/// APIMonthPrice
///
/// Properties:
/// * [month] 
/// * [prices] 
@BuiltValue()
abstract class APIMonthPrice implements Built<APIMonthPrice, APIMonthPriceBuilder> {
  @BuiltValueField(wireName: r'month')
  String get month;

  @BuiltValueField(wireName: r'prices')
  BuiltList<APIPrice> get prices;

  APIMonthPrice._();

  factory APIMonthPrice([void updates(APIMonthPriceBuilder b)]) = _$APIMonthPrice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIMonthPriceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIMonthPrice> get serializer => _$APIMonthPriceSerializer();
}

class _$APIMonthPriceSerializer implements PrimitiveSerializer<APIMonthPrice> {
  @override
  final Iterable<Type> types = const [APIMonthPrice, _$APIMonthPrice];

  @override
  final String wireName = r'APIMonthPrice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIMonthPrice object, {
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
      specifiedType: const FullType(BuiltList, [FullType(APIPrice)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    APIMonthPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIMonthPriceBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(APIPrice)]),
          ) as BuiltList<APIPrice>;
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
  APIMonthPrice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIMonthPriceBuilder();
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

