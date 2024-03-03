//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/charger_spot.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response.g.dart';

/// Response
///
/// Properties:
/// * [status] - ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
/// * [chargerSpots] 
@BuiltValue()
abstract class Response implements Built<Response, ResponseBuilder> {
  /// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
  @BuiltValueField(wireName: r'status')
  ResponseStatusEnum get status;
  // enum statusEnum {  ok,  ng_latlngs_is_blank,  ng_distance_too_long,  };

  @BuiltValueField(wireName: r'charger_spots')
  BuiltList<ChargerSpot> get chargerSpots;

  Response._();

  factory Response([void updates(ResponseBuilder b)]) = _$Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Response> get serializer => _$ResponseSerializer();
}

class _$ResponseSerializer implements PrimitiveSerializer<Response> {
  @override
  final Iterable<Type> types = const [Response, _$Response];

  @override
  final String wireName = r'Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ResponseStatusEnum),
    );
    yield r'charger_spots';
    yield serializers.serialize(
      object.chargerSpots,
      specifiedType: const FullType(BuiltList, [FullType(ChargerSpot)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResponseStatusEnum),
          ) as ResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'charger_spots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChargerSpot)]),
          ) as BuiltList<ChargerSpot>;
          result.chargerSpots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponseBuilder();
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

class ResponseStatusEnum extends EnumClass {

  /// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
  @BuiltValueEnumConst(wireName: r'ok')
  static const ResponseStatusEnum ok = _$responseStatusEnum_ok;
  /// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
  @BuiltValueEnumConst(wireName: r'ng_latlngs_is_blank')
  static const ResponseStatusEnum ngLatlngsIsBlank = _$responseStatusEnum_ngLatlngsIsBlank;
  /// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
  @BuiltValueEnumConst(wireName: r'ng_distance_too_long')
  static const ResponseStatusEnum ngDistanceTooLong = _$responseStatusEnum_ngDistanceTooLong;

  static Serializer<ResponseStatusEnum> get serializer => _$responseStatusEnumSerializer;

  const ResponseStatusEnum._(String name): super(name);

  static BuiltSet<ResponseStatusEnum> get values => _$responseStatusEnumValues;
  static ResponseStatusEnum valueOf(String name) => _$responseStatusEnumValueOf(name);
}

