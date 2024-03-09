//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_gogoev_charger_device.g.dart';

/// APIGogoevChargerDevice
///
/// Properties:
/// * [deviceTypes] - 充電器の種類
/// * [power] - 充電出力
/// * [number] - 充電器数
/// * [fee] - 充電料金
/// * [authenticationNetworks] - 認証ネットワーク
/// * [authenticationApps] - 認証アプリ
@BuiltValue()
abstract class APIGogoevChargerDevice implements Built<APIGogoevChargerDevice, APIGogoevChargerDeviceBuilder> {
  /// 充電器の種類
  @BuiltValueField(wireName: r'device_types')
  BuiltList<String>? get deviceTypes;

  /// 充電出力
  @BuiltValueField(wireName: r'power')
  String? get power;

  /// 充電器数
  @BuiltValueField(wireName: r'number')
  num get number;

  /// 充電料金
  @BuiltValueField(wireName: r'fee')
  String get fee;

  /// 認証ネットワーク
  @BuiltValueField(wireName: r'authentication_networks')
  BuiltList<String> get authenticationNetworks;

  /// 認証アプリ
  @BuiltValueField(wireName: r'authentication_apps')
  BuiltList<String> get authenticationApps;

  APIGogoevChargerDevice._();

  factory APIGogoevChargerDevice([void updates(APIGogoevChargerDeviceBuilder b)]) = _$APIGogoevChargerDevice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIGogoevChargerDeviceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIGogoevChargerDevice> get serializer => _$APIGogoevChargerDeviceSerializer();
}

class _$APIGogoevChargerDeviceSerializer implements PrimitiveSerializer<APIGogoevChargerDevice> {
  @override
  final Iterable<Type> types = const [APIGogoevChargerDevice, _$APIGogoevChargerDevice];

  @override
  final String wireName = r'APIGogoevChargerDevice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIGogoevChargerDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.deviceTypes != null) {
      yield r'device_types';
      yield serializers.serialize(
        object.deviceTypes,
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
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(num),
    );
    yield r'fee';
    yield serializers.serialize(
      object.fee,
      specifiedType: const FullType(String),
    );
    yield r'authentication_networks';
    yield serializers.serialize(
      object.authenticationNetworks,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'authentication_apps';
    yield serializers.serialize(
      object.authenticationApps,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    APIGogoevChargerDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIGogoevChargerDeviceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device_types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.deviceTypes.replace(valueDes);
          break;
        case r'power':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.power = valueDes;
          break;
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.number = valueDes;
          break;
        case r'fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fee = valueDes;
          break;
        case r'authentication_networks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.authenticationNetworks.replace(valueDes);
          break;
        case r'authentication_apps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.authenticationApps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  APIGogoevChargerDevice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIGogoevChargerDeviceBuilder();
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

