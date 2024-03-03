//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'charger_spot_image.g.dart';

/// ChargerSpotImage
///
/// Properties:
/// * [url] 
/// * [caption] 
@BuiltValue()
abstract class ChargerSpotImage implements Built<ChargerSpotImage, ChargerSpotImageBuilder> {
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'caption')
  String? get caption;

  ChargerSpotImage._();

  factory ChargerSpotImage([void updates(ChargerSpotImageBuilder b)]) = _$ChargerSpotImage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChargerSpotImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChargerSpotImage> get serializer => _$ChargerSpotImageSerializer();
}

class _$ChargerSpotImageSerializer implements PrimitiveSerializer<ChargerSpotImage> {
  @override
  final Iterable<Type> types = const [ChargerSpotImage, _$ChargerSpotImage];

  @override
  final String wireName = r'ChargerSpotImage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChargerSpotImage object, {
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
    ChargerSpotImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChargerSpotImageBuilder result,
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
  ChargerSpotImage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChargerSpotImageBuilder();
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

