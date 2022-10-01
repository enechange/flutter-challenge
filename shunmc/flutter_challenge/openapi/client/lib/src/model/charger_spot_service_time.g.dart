// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_spot_service_time.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChargerSpotServiceTimeBusinessDayEnum
    _$chargerSpotServiceTimeBusinessDayEnum_yes =
    const ChargerSpotServiceTimeBusinessDayEnum._('yes');
const ChargerSpotServiceTimeBusinessDayEnum
    _$chargerSpotServiceTimeBusinessDayEnum_no =
    const ChargerSpotServiceTimeBusinessDayEnum._('no');
const ChargerSpotServiceTimeBusinessDayEnum
    _$chargerSpotServiceTimeBusinessDayEnum_unknown =
    const ChargerSpotServiceTimeBusinessDayEnum._('unknown');

ChargerSpotServiceTimeBusinessDayEnum
    _$chargerSpotServiceTimeBusinessDayEnumValueOf(String name) {
  switch (name) {
    case 'yes':
      return _$chargerSpotServiceTimeBusinessDayEnum_yes;
    case 'no':
      return _$chargerSpotServiceTimeBusinessDayEnum_no;
    case 'unknown':
      return _$chargerSpotServiceTimeBusinessDayEnum_unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChargerSpotServiceTimeBusinessDayEnum>
    _$chargerSpotServiceTimeBusinessDayEnumValues =
    new BuiltSet<ChargerSpotServiceTimeBusinessDayEnum>(const <
        ChargerSpotServiceTimeBusinessDayEnum>[
  _$chargerSpotServiceTimeBusinessDayEnum_yes,
  _$chargerSpotServiceTimeBusinessDayEnum_no,
  _$chargerSpotServiceTimeBusinessDayEnum_unknown,
]);

const ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnum_sunday =
    const ChargerSpotServiceTimeDayEnum._('sunday');
const ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnum_monday =
    const ChargerSpotServiceTimeDayEnum._('monday');
const ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnum_tuesday =
    const ChargerSpotServiceTimeDayEnum._('tuesday');
const ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnum_wednesday =
    const ChargerSpotServiceTimeDayEnum._('wednesday');
const ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnum_thursday =
    const ChargerSpotServiceTimeDayEnum._('thursday');
const ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnum_friday =
    const ChargerSpotServiceTimeDayEnum._('friday');
const ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnum_saturday =
    const ChargerSpotServiceTimeDayEnum._('saturday');
const ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnum_holiday =
    const ChargerSpotServiceTimeDayEnum._('holiday');
const ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnum_weekday =
    const ChargerSpotServiceTimeDayEnum._('weekday');

ChargerSpotServiceTimeDayEnum _$chargerSpotServiceTimeDayEnumValueOf(
    String name) {
  switch (name) {
    case 'sunday':
      return _$chargerSpotServiceTimeDayEnum_sunday;
    case 'monday':
      return _$chargerSpotServiceTimeDayEnum_monday;
    case 'tuesday':
      return _$chargerSpotServiceTimeDayEnum_tuesday;
    case 'wednesday':
      return _$chargerSpotServiceTimeDayEnum_wednesday;
    case 'thursday':
      return _$chargerSpotServiceTimeDayEnum_thursday;
    case 'friday':
      return _$chargerSpotServiceTimeDayEnum_friday;
    case 'saturday':
      return _$chargerSpotServiceTimeDayEnum_saturday;
    case 'holiday':
      return _$chargerSpotServiceTimeDayEnum_holiday;
    case 'weekday':
      return _$chargerSpotServiceTimeDayEnum_weekday;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChargerSpotServiceTimeDayEnum>
    _$chargerSpotServiceTimeDayEnumValues = new BuiltSet<
        ChargerSpotServiceTimeDayEnum>(const <ChargerSpotServiceTimeDayEnum>[
  _$chargerSpotServiceTimeDayEnum_sunday,
  _$chargerSpotServiceTimeDayEnum_monday,
  _$chargerSpotServiceTimeDayEnum_tuesday,
  _$chargerSpotServiceTimeDayEnum_wednesday,
  _$chargerSpotServiceTimeDayEnum_thursday,
  _$chargerSpotServiceTimeDayEnum_friday,
  _$chargerSpotServiceTimeDayEnum_saturday,
  _$chargerSpotServiceTimeDayEnum_holiday,
  _$chargerSpotServiceTimeDayEnum_weekday,
]);

Serializer<ChargerSpotServiceTimeBusinessDayEnum>
    _$chargerSpotServiceTimeBusinessDayEnumSerializer =
    new _$ChargerSpotServiceTimeBusinessDayEnumSerializer();
Serializer<ChargerSpotServiceTimeDayEnum>
    _$chargerSpotServiceTimeDayEnumSerializer =
    new _$ChargerSpotServiceTimeDayEnumSerializer();

class _$ChargerSpotServiceTimeBusinessDayEnumSerializer
    implements PrimitiveSerializer<ChargerSpotServiceTimeBusinessDayEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'yes': 'yes',
    'no': 'no',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'yes': 'yes',
    'no': 'no',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChargerSpotServiceTimeBusinessDayEnum
  ];
  @override
  final String wireName = 'ChargerSpotServiceTimeBusinessDayEnum';

  @override
  Object serialize(
          Serializers serializers, ChargerSpotServiceTimeBusinessDayEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChargerSpotServiceTimeBusinessDayEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChargerSpotServiceTimeBusinessDayEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChargerSpotServiceTimeDayEnumSerializer
    implements PrimitiveSerializer<ChargerSpotServiceTimeDayEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sunday': 'Sunday',
    'monday': 'Monday',
    'tuesday': 'Tuesday',
    'wednesday': 'Wednesday',
    'thursday': 'Thursday',
    'friday': 'Friday',
    'saturday': 'Saturday',
    'holiday': 'Holiday',
    'weekday': 'Weekday',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Sunday': 'sunday',
    'Monday': 'monday',
    'Tuesday': 'tuesday',
    'Wednesday': 'wednesday',
    'Thursday': 'thursday',
    'Friday': 'friday',
    'Saturday': 'saturday',
    'Holiday': 'holiday',
    'Weekday': 'weekday',
  };

  @override
  final Iterable<Type> types = const <Type>[ChargerSpotServiceTimeDayEnum];
  @override
  final String wireName = 'ChargerSpotServiceTimeDayEnum';

  @override
  Object serialize(
          Serializers serializers, ChargerSpotServiceTimeDayEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChargerSpotServiceTimeDayEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChargerSpotServiceTimeDayEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChargerSpotServiceTime extends ChargerSpotServiceTime {
  @override
  final ChargerSpotServiceTimeBusinessDayEnum businessDay;
  @override
  final ChargerSpotServiceTimeDayEnum day;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final bool today;

  factory _$ChargerSpotServiceTime(
          [void Function(ChargerSpotServiceTimeBuilder)? updates]) =>
      (new ChargerSpotServiceTimeBuilder()..update(updates))._build();

  _$ChargerSpotServiceTime._(
      {required this.businessDay,
      required this.day,
      this.startTime,
      this.endTime,
      required this.today})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        businessDay, r'ChargerSpotServiceTime', 'businessDay');
    BuiltValueNullFieldError.checkNotNull(
        day, r'ChargerSpotServiceTime', 'day');
    BuiltValueNullFieldError.checkNotNull(
        today, r'ChargerSpotServiceTime', 'today');
  }

  @override
  ChargerSpotServiceTime rebuild(
          void Function(ChargerSpotServiceTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChargerSpotServiceTimeBuilder toBuilder() =>
      new ChargerSpotServiceTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChargerSpotServiceTime &&
        businessDay == other.businessDay &&
        day == other.day &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        today == other.today;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, businessDay.hashCode), day.hashCode),
                startTime.hashCode),
            endTime.hashCode),
        today.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChargerSpotServiceTime')
          ..add('businessDay', businessDay)
          ..add('day', day)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('today', today))
        .toString();
  }
}

class ChargerSpotServiceTimeBuilder
    implements Builder<ChargerSpotServiceTime, ChargerSpotServiceTimeBuilder> {
  _$ChargerSpotServiceTime? _$v;

  ChargerSpotServiceTimeBusinessDayEnum? _businessDay;
  ChargerSpotServiceTimeBusinessDayEnum? get businessDay => _$this._businessDay;
  set businessDay(ChargerSpotServiceTimeBusinessDayEnum? businessDay) =>
      _$this._businessDay = businessDay;

  ChargerSpotServiceTimeDayEnum? _day;
  ChargerSpotServiceTimeDayEnum? get day => _$this._day;
  set day(ChargerSpotServiceTimeDayEnum? day) => _$this._day = day;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  bool? _today;
  bool? get today => _$this._today;
  set today(bool? today) => _$this._today = today;

  ChargerSpotServiceTimeBuilder() {
    ChargerSpotServiceTime._defaults(this);
  }

  ChargerSpotServiceTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _businessDay = $v.businessDay;
      _day = $v.day;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _today = $v.today;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChargerSpotServiceTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChargerSpotServiceTime;
  }

  @override
  void update(void Function(ChargerSpotServiceTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChargerSpotServiceTime build() => _build();

  _$ChargerSpotServiceTime _build() {
    final _$result = _$v ??
        new _$ChargerSpotServiceTime._(
            businessDay: BuiltValueNullFieldError.checkNotNull(
                businessDay, r'ChargerSpotServiceTime', 'businessDay'),
            day: BuiltValueNullFieldError.checkNotNull(
                day, r'ChargerSpotServiceTime', 'day'),
            startTime: startTime,
            endTime: endTime,
            today: BuiltValueNullFieldError.checkNotNull(
                today, r'ChargerSpotServiceTime', 'today'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
