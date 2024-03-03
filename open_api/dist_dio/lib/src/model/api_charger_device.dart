//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_charger_device.g.dart';

/// APIChargerDevice
///
/// Properties:
/// * [name] - 充電器の名称
/// * [code] - 充電器番号
/// * [makerCode] - メーカーコード
/// * [productCode] - 製品コード
/// * [serialNumber] - シリアル番号
/// * [serviceStartTime] - サービス開始時刻
/// * [serviceEndTime] - サービス終了時刻
/// * [allowCurrent] - 充電許容電流
/// * [maxChargeTime] - 最大充電時間
/// * [latitude] - 緯度
/// * [longitude] - 経度
/// * [displayStatus] - 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど）
/// * [power] - 充電電力（3.2, 4.8, 6のどれかで6が基本。今後増える可能性あり）
/// * [fee] - 充電料金（有料, 条件付き無料, 無料, 不明）
/// * [lastUpdated] - 最終更新タイミング
@BuiltValue()
abstract class APIChargerDevice implements Built<APIChargerDevice, APIChargerDeviceBuilder> {
  /// 充電器の名称
  @BuiltValueField(wireName: r'name')
  String get name;

  /// 充電器番号
  @BuiltValueField(wireName: r'code')
  String get code;

  /// メーカーコード
  @BuiltValueField(wireName: r'maker_code')
  String get makerCode;

  /// 製品コード
  @BuiltValueField(wireName: r'product_code')
  String get productCode;

  /// シリアル番号
  @BuiltValueField(wireName: r'serial_number')
  String get serialNumber;

  /// サービス開始時刻
  @BuiltValueField(wireName: r'service_start_time')
  String? get serviceStartTime;

  /// サービス終了時刻
  @BuiltValueField(wireName: r'service_end_time')
  String? get serviceEndTime;

  /// 充電許容電流
  @BuiltValueField(wireName: r'allow_current')
  String? get allowCurrent;

  /// 最大充電時間
  @BuiltValueField(wireName: r'max_charge_time')
  String? get maxChargeTime;

  /// 緯度
  @BuiltValueField(wireName: r'latitude')
  num get latitude;

  /// 経度
  @BuiltValueField(wireName: r'longitude')
  num get longitude;

  /// 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど）
  @BuiltValueField(wireName: r'display_status')
  APIChargerDeviceDisplayStatusEnum get displayStatus;
  // enum displayStatusEnum {  unavailable_or_no_info,  in_use,  available,  unable_to_obtain_info,  };

  /// 充電電力（3.2, 4.8, 6のどれかで6が基本。今後増える可能性あり）
  @BuiltValueField(wireName: r'power')
  String get power;

  /// 充電料金（有料, 条件付き無料, 無料, 不明）
  @BuiltValueField(wireName: r'fee')
  String get fee;

  /// 最終更新タイミング
  @BuiltValueField(wireName: r'last_updated')
  String? get lastUpdated;

  APIChargerDevice._();

  factory APIChargerDevice([void updates(APIChargerDeviceBuilder b)]) = _$APIChargerDevice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIChargerDeviceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIChargerDevice> get serializer => _$APIChargerDeviceSerializer();
}

class _$APIChargerDeviceSerializer implements PrimitiveSerializer<APIChargerDevice> {
  @override
  final Iterable<Type> types = const [APIChargerDevice, _$APIChargerDevice];

  @override
  final String wireName = r'APIChargerDevice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIChargerDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'maker_code';
    yield serializers.serialize(
      object.makerCode,
      specifiedType: const FullType(String),
    );
    yield r'product_code';
    yield serializers.serialize(
      object.productCode,
      specifiedType: const FullType(String),
    );
    yield r'serial_number';
    yield serializers.serialize(
      object.serialNumber,
      specifiedType: const FullType(String),
    );
    if (object.serviceStartTime != null) {
      yield r'service_start_time';
      yield serializers.serialize(
        object.serviceStartTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.serviceEndTime != null) {
      yield r'service_end_time';
      yield serializers.serialize(
        object.serviceEndTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.allowCurrent != null) {
      yield r'allow_current';
      yield serializers.serialize(
        object.allowCurrent,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maxChargeTime != null) {
      yield r'max_charge_time';
      yield serializers.serialize(
        object.maxChargeTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'latitude';
    yield serializers.serialize(
      object.latitude,
      specifiedType: const FullType(num),
    );
    yield r'longitude';
    yield serializers.serialize(
      object.longitude,
      specifiedType: const FullType(num),
    );
    yield r'display_status';
    yield serializers.serialize(
      object.displayStatus,
      specifiedType: const FullType(APIChargerDeviceDisplayStatusEnum),
    );
    yield r'power';
    yield serializers.serialize(
      object.power,
      specifiedType: const FullType(String),
    );
    yield r'fee';
    yield serializers.serialize(
      object.fee,
      specifiedType: const FullType(String),
    );
    if (object.lastUpdated != null) {
      yield r'last_updated';
      yield serializers.serialize(
        object.lastUpdated,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    APIChargerDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIChargerDeviceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'maker_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.makerCode = valueDes;
          break;
        case r'product_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productCode = valueDes;
          break;
        case r'serial_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serialNumber = valueDes;
          break;
        case r'service_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serviceStartTime = valueDes;
          break;
        case r'service_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serviceEndTime = valueDes;
          break;
        case r'allow_current':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.allowCurrent = valueDes;
          break;
        case r'max_charge_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maxChargeTime = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.longitude = valueDes;
          break;
        case r'display_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(APIChargerDeviceDisplayStatusEnum),
          ) as APIChargerDeviceDisplayStatusEnum;
          result.displayStatus = valueDes;
          break;
        case r'power':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.power = valueDes;
          break;
        case r'fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fee = valueDes;
          break;
        case r'last_updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastUpdated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  APIChargerDevice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIChargerDeviceBuilder();
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

class APIChargerDeviceDisplayStatusEnum extends EnumClass {

  /// 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど）
  @BuiltValueEnumConst(wireName: r'unavailable_or_no_info')
  static const APIChargerDeviceDisplayStatusEnum unavailableOrNoInfo = _$aPIChargerDeviceDisplayStatusEnum_unavailableOrNoInfo;
  /// 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど）
  @BuiltValueEnumConst(wireName: r'in_use')
  static const APIChargerDeviceDisplayStatusEnum inUse = _$aPIChargerDeviceDisplayStatusEnum_inUse;
  /// 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど）
  @BuiltValueEnumConst(wireName: r'available')
  static const APIChargerDeviceDisplayStatusEnum available = _$aPIChargerDeviceDisplayStatusEnum_available;
  /// 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど）
  @BuiltValueEnumConst(wireName: r'unable_to_obtain_info')
  static const APIChargerDeviceDisplayStatusEnum unableToObtainInfo = _$aPIChargerDeviceDisplayStatusEnum_unableToObtainInfo;

  static Serializer<APIChargerDeviceDisplayStatusEnum> get serializer => _$aPIChargerDeviceDisplayStatusEnumSerializer;

  const APIChargerDeviceDisplayStatusEnum._(String name): super(name);

  static BuiltSet<APIChargerDeviceDisplayStatusEnum> get values => _$aPIChargerDeviceDisplayStatusEnumValues;
  static APIChargerDeviceDisplayStatusEnum valueOf(String name) => _$aPIChargerDeviceDisplayStatusEnumValueOf(name);
}

