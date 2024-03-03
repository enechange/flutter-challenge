//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'charger_spot_service_time.g.dart';

/// ChargerSpotServiceTime
///
/// Properties:
/// * [businessDay] - yes: 営業日, no: 定休日, unknown: 不明
/// * [day] - 曜日
/// * [startTime] - 開始時刻
/// * [endTime] - 終了時刻
/// * [today] - リクエストタイミングにおいてその曜日かどうか
@BuiltValue()
abstract class ChargerSpotServiceTime implements Built<ChargerSpotServiceTime, ChargerSpotServiceTimeBuilder> {
  /// yes: 営業日, no: 定休日, unknown: 不明
  @BuiltValueField(wireName: r'business_day')
  ChargerSpotServiceTimeBusinessDayEnum get businessDay;
  // enum businessDayEnum {  yes,  no,  unknown,  };

  /// 曜日
  @BuiltValueField(wireName: r'day')
  ChargerSpotServiceTimeDayEnum get day;
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

  ChargerSpotServiceTime._();

  factory ChargerSpotServiceTime([void updates(ChargerSpotServiceTimeBuilder b)]) = _$ChargerSpotServiceTime;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChargerSpotServiceTimeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChargerSpotServiceTime> get serializer => _$ChargerSpotServiceTimeSerializer();
}

class _$ChargerSpotServiceTimeSerializer implements PrimitiveSerializer<ChargerSpotServiceTime> {
  @override
  final Iterable<Type> types = const [ChargerSpotServiceTime, _$ChargerSpotServiceTime];

  @override
  final String wireName = r'ChargerSpotServiceTime';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChargerSpotServiceTime object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'business_day';
    yield serializers.serialize(
      object.businessDay,
      specifiedType: const FullType(ChargerSpotServiceTimeBusinessDayEnum),
    );
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(ChargerSpotServiceTimeDayEnum),
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
    ChargerSpotServiceTime object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChargerSpotServiceTimeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'business_day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChargerSpotServiceTimeBusinessDayEnum),
          ) as ChargerSpotServiceTimeBusinessDayEnum;
          result.businessDay = valueDes;
          break;
        case r'day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChargerSpotServiceTimeDayEnum),
          ) as ChargerSpotServiceTimeDayEnum;
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
  ChargerSpotServiceTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChargerSpotServiceTimeBuilder();
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

class ChargerSpotServiceTimeBusinessDayEnum extends EnumClass {

  /// yes: 営業日, no: 定休日, unknown: 不明
  @BuiltValueEnumConst(wireName: r'yes')
  static const ChargerSpotServiceTimeBusinessDayEnum yes = _$chargerSpotServiceTimeBusinessDayEnum_yes;
  /// yes: 営業日, no: 定休日, unknown: 不明
  @BuiltValueEnumConst(wireName: r'no')
  static const ChargerSpotServiceTimeBusinessDayEnum no = _$chargerSpotServiceTimeBusinessDayEnum_no;
  /// yes: 営業日, no: 定休日, unknown: 不明
  @BuiltValueEnumConst(wireName: r'unknown')
  static const ChargerSpotServiceTimeBusinessDayEnum unknown = _$chargerSpotServiceTimeBusinessDayEnum_unknown;

  static Serializer<ChargerSpotServiceTimeBusinessDayEnum> get serializer => _$chargerSpotServiceTimeBusinessDayEnumSerializer;

  const ChargerSpotServiceTimeBusinessDayEnum._(String name): super(name);

  static BuiltSet<ChargerSpotServiceTimeBusinessDayEnum> get values => _$chargerSpotServiceTimeBusinessDayEnumValues;
  static ChargerSpotServiceTimeBusinessDayEnum valueOf(String name) => _$chargerSpotServiceTimeBusinessDayEnumValueOf(name);
}

class ChargerSpotServiceTimeDayEnum extends EnumClass {

  /// 曜日
  @BuiltValueEnumConst(wireName: r'Sunday')
  static const ChargerSpotServiceTimeDayEnum sunday = _$chargerSpotServiceTimeDayEnum_sunday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Monday')
  static const ChargerSpotServiceTimeDayEnum monday = _$chargerSpotServiceTimeDayEnum_monday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Tuesday')
  static const ChargerSpotServiceTimeDayEnum tuesday = _$chargerSpotServiceTimeDayEnum_tuesday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Wednesday')
  static const ChargerSpotServiceTimeDayEnum wednesday = _$chargerSpotServiceTimeDayEnum_wednesday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Thursday')
  static const ChargerSpotServiceTimeDayEnum thursday = _$chargerSpotServiceTimeDayEnum_thursday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Friday')
  static const ChargerSpotServiceTimeDayEnum friday = _$chargerSpotServiceTimeDayEnum_friday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Saturday')
  static const ChargerSpotServiceTimeDayEnum saturday = _$chargerSpotServiceTimeDayEnum_saturday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Holiday')
  static const ChargerSpotServiceTimeDayEnum holiday = _$chargerSpotServiceTimeDayEnum_holiday;
  /// 曜日
  @BuiltValueEnumConst(wireName: r'Weekday')
  static const ChargerSpotServiceTimeDayEnum weekday = _$chargerSpotServiceTimeDayEnum_weekday;

  static Serializer<ChargerSpotServiceTimeDayEnum> get serializer => _$chargerSpotServiceTimeDayEnumSerializer;

  const ChargerSpotServiceTimeDayEnum._(String name): super(name);

  static BuiltSet<ChargerSpotServiceTimeDayEnum> get values => _$chargerSpotServiceTimeDayEnumValues;
  static ChargerSpotServiceTimeDayEnum valueOf(String name) => _$chargerSpotServiceTimeDayEnumValueOf(name);
}

