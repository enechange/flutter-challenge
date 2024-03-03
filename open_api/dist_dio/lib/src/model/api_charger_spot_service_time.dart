//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_charger_spot_service_time.g.dart';

/// APIChargerSpotServiceTime
///
/// Properties:
/// * [businessDay] - yes: 営業日, no: 定休日, unknown: 不明
/// * [day] - 曜日
/// * [startTime] - 開始時刻
/// * [endTime] - 終了時刻
/// * [today] - リクエストタイミングにおいてその曜日かどうか
@BuiltValue()
abstract class APIChargerSpotServiceTime implements Built<APIChargerSpotServiceTime, APIChargerSpotServiceTimeBuilder> {
  /// yes: 営業日, no: 定休日, unknown: 不明
  @BuiltValueField(wireName: r'business_day')
  APIChargerSpotServiceTimeBusinessDayEnum get businessDay;
  // enum businessDayEnum {  yes,  no,  unknown,  };

  /// 曜日
  @BuiltValueField(wireName: r'day')
  APIChargerSpotServiceTimeDayEnum get day;
  // enum dayEnum {  Sunday,  Monday,  Tuesday,  Wednesday,  Thursday,  Friday,  Saturday,  Holiday,  Weekday,  };

  /// 開始時刻
  @BuiltValueField(wireName: r'start_time')
  String? get startTime;

  /// 終了時刻
  @BuiltValueField(wireName: r'end_time')
  String? get endTime;

  /// リクエストタイミングにおいてその曜日かどうか
  @BuiltValueField(wireName: r'today')
  bool get today;

  APIChargerSpotServiceTime._();

  factory APIChargerSpotServiceTime([void updates(APIChargerSpotServiceTimeBuilder b)]) = _$APIChargerSpotServiceTime;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(APIChargerSpotServiceTimeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<APIChargerSpotServiceTime> get serializer => _$APIChargerSpotServiceTimeSerializer();
}

class _$APIChargerSpotServiceTimeSerializer implements PrimitiveSerializer<APIChargerSpotServiceTime> {
  @override
  final Iterable<Type> types = const [APIChargerSpotServiceTime, _$APIChargerSpotServiceTime];

  @override
  final String wireName = r'APIChargerSpotServiceTime';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    APIChargerSpotServiceTime object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'business_day';
    yield serializers.serialize(
      object.businessDay,
      specifiedType: const FullType(APIChargerSpotServiceTimeBusinessDayEnum),
    );
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(APIChargerSpotServiceTimeDayEnum),
    );
    if (object.startTime != null) {
      yield r'start_time';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'today';
    yield serializers.serialize(
      object.today,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    APIChargerSpotServiceTime object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required APIChargerSpotServiceTimeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'business_day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(APIChargerSpotServiceTimeBusinessDayEnum),
          ) as APIChargerSpotServiceTimeBusinessDayEnum;
          result.businessDay = valueDes;
          break;
        case r'day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(APIChargerSpotServiceTimeDayEnum),
          ) as APIChargerSpotServiceTimeDayEnum;
          result.day = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'today':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.today = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  APIChargerSpotServiceTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = APIChargerSpotServiceTimeBuilder();
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

class APIChargerSpotServiceTimeBusinessDayEnum extends EnumClass {

  /// yes: 営業日, no: 定休日, unknown: 不明
  @BuiltValueEnumConst(wireName: r'yes')
  static const APIChargerSpotServiceTimeBusinessDayEnum yes = _$aPIChargerSpotServiceTimeBusinessDayEnum_yes;
  /// yes: 営業日, no: 定休日, unknown: 不明
  @BuiltValueEnumConst(wireName: r'no')
  static const APIChargerSpotServiceTimeBusinessDayEnum no = _$aPIChargerSpotServiceTimeBusinessDayEnum_no;
  /// yes: 営業日, no: 定休日, unknown: 不明
  @BuiltValueEnumConst(wireName: r'unknown')
  static const APIChargerSpotServiceTimeBusinessDayEnum unknown = _$aPIChargerSpotServiceTimeBusinessDayEnum_unknown;

  static Serializer<APIChargerSpotServiceTimeBusinessDayEnum> get serializer => _$aPIChargerSpotServiceTimeBusinessDayEnumSerializer;

  const APIChargerSpotServiceTimeBusinessDayEnum._(String name): super(name);

  static BuiltSet<APIChargerSpotServiceTimeBusinessDayEnum> get values => _$aPIChargerSpotServiceTimeBusinessDayEnumValues;
  static APIChargerSpotServiceTimeBusinessDayEnum valueOf(String name) => _$aPIChargerSpotServiceTimeBusinessDayEnumValueOf(name);
}

class APIChargerSpotServiceTimeDayEnum extends EnumClass {

  /// 曜日
  @BuiltValueEnumConst(wireName: r'Sunday')
  static const APIChargerSpotServiceTimeDayEnum sunday = _$aPIChargerSpotServiceTimeDayEnum_sunday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Monday')
  static const APIChargerSpotServiceTimeDayEnum monday = _$aPIChargerSpotServiceTimeDayEnum_monday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Tuesday')
  static const APIChargerSpotServiceTimeDayEnum tuesday = _$aPIChargerSpotServiceTimeDayEnum_tuesday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Wednesday')
  static const APIChargerSpotServiceTimeDayEnum wednesday = _$aPIChargerSpotServiceTimeDayEnum_wednesday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Thursday')
  static const APIChargerSpotServiceTimeDayEnum thursday = _$aPIChargerSpotServiceTimeDayEnum_thursday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Friday')
  static const APIChargerSpotServiceTimeDayEnum friday = _$aPIChargerSpotServiceTimeDayEnum_friday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Saturday')
  static const APIChargerSpotServiceTimeDayEnum saturday = _$aPIChargerSpotServiceTimeDayEnum_saturday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Holiday')
  static const APIChargerSpotServiceTimeDayEnum holiday = _$aPIChargerSpotServiceTimeDayEnum_holiday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Weekday')
  static const APIChargerSpotServiceTimeDayEnum weekday = _$aPIChargerSpotServiceTimeDayEnum_weekday;

  static Serializer<APIChargerSpotServiceTimeDayEnum> get serializer => _$aPIChargerSpotServiceTimeDayEnumSerializer;

  const APIChargerSpotServiceTimeDayEnum._(String name): super(name);

  static BuiltSet<APIChargerSpotServiceTimeDayEnum> get values => _$aPIChargerSpotServiceTimeDayEnumValues;
  static APIChargerSpotServiceTimeDayEnum valueOf(String name) => _$aPIChargerSpotServiceTimeDayEnumValueOf(name);
}

