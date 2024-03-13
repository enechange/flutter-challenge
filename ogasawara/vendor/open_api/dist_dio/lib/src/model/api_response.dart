//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/api_charger_spot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_response.g.dart';

/// APIResponse
///
/// Properties:
/// * [status] - ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
/// * [chargerSpots] 
@BuiltValue()
abstract class APIResponse implements Built<APIResponse, APIResponseBuilder> {
  /// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
  @BuiltValueField(wireName: r'status')
  APIResponseStatusEnum get status;
  // enum statusEnum {  ok,  ng_latlngs_is_blank,  ng_distance_too_long,  };

  @BuiltValueField(wireName: r'charger_spots')
  BuiltList<APIChargerSpot> get chargerSpots;

  APIResponse._();

  factory APIResponse([void updates(APIResponseBuilder b)]) = _$APIResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIResponse> get serializer => _$APIResponseSerializer();
}

class _$APIResponseSerializer implements PrimitiveSerializer<APIResponse> {
  @override
  final Iterable<Type> types = const [APIResponse, _$APIResponse];

  @override
  final String wireName = r'APIResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(APIResponseStatusEnum),
    );
    yield r'charger_spots';
    yield serializers.serialize(
      object.chargerSpots,
      specifiedType: const FullType(BuiltList, [FullType(APIChargerSpot)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    APIResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(APIResponseStatusEnum),
          ) as APIResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'charger_spots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(APIChargerSpot)]),
          ) as BuiltList<APIChargerSpot>;
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
  APIResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIResponseBuilder();
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

class APIResponseStatusEnum extends EnumClass {

  /// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
  @BuiltValueEnumConst(wireName: r'ok')
  static const APIResponseStatusEnum ok = _$aPIResponseStatusEnum_ok;
  /// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
  @BuiltValueEnumConst(wireName: r'ng_latlngs_is_blank')
  static const APIResponseStatusEnum ngLatlngsIsBlank = _$aPIResponseStatusEnum_ngLatlngsIsBlank;
  /// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
  @BuiltValueEnumConst(wireName: r'ng_distance_too_long')
  static const APIResponseStatusEnum ngDistanceTooLong = _$aPIResponseStatusEnum_ngDistanceTooLong;

  static Serializer<APIResponseStatusEnum> get serializer => _$aPIResponseStatusEnumSerializer;

  const APIResponseStatusEnum._(String name): super(name);

  static BuiltSet<APIResponseStatusEnum> get values => _$aPIResponseStatusEnumValues;
  static APIResponseStatusEnum valueOf(String name) => _$aPIResponseStatusEnumValueOf(name);
}

