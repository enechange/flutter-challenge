//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_charger_spot_image.g.dart';

/// APIChargerSpotImage
///
/// Properties:
/// * [url] 
/// * [caption] 
@BuiltValue()
abstract class APIChargerSpotImage implements Built<APIChargerSpotImage, APIChargerSpotImageBuilder> {
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'caption')
  String? get caption;

  APIChargerSpotImage._();

  factory APIChargerSpotImage([void updates(APIChargerSpotImageBuilder b)]) = _$APIChargerSpotImage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIChargerSpotImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIChargerSpotImage> get serializer => _$APIChargerSpotImageSerializer();
}

class _$APIChargerSpotImageSerializer implements PrimitiveSerializer<APIChargerSpotImage> {
  @override
  final Iterable<Type> types = const [APIChargerSpotImage, _$APIChargerSpotImage];

  @override
  final String wireName = r'APIChargerSpotImage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIChargerSpotImage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.caption != null) {
      yield r'caption';
      yield serializers.serialize(
        object.caption,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    APIChargerSpotImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIChargerSpotImageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'caption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.caption = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  APIChargerSpotImage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIChargerSpotImageBuilder();
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

