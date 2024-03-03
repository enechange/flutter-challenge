// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_charger_spot_service_time.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const APIChargerSpotServiceTimeBusinessDayEnum
    _$aPIChargerSpotServiceTimeBusinessDayEnum_yes =
    const APIChargerSpotServiceTimeBusinessDayEnum._('yes');
const APIChargerSpotServiceTimeBusinessDayEnum
    _$aPIChargerSpotServiceTimeBusinessDayEnum_no =
    const APIChargerSpotServiceTimeBusinessDayEnum._('no');
const APIChargerSpotServiceTimeBusinessDayEnum
    _$aPIChargerSpotServiceTimeBusinessDayEnum_unknown =
    const APIChargerSpotServiceTimeBusinessDayEnum._('unknown');

APIChargerSpotServiceTimeBusinessDayEnum
    _$aPIChargerSpotServiceTimeBusinessDayEnumValueOf(String name) {
  switch (name) {
    case 'yes':
      return _$aPIChargerSpotServiceTimeBusinessDayEnum_yes;
    case 'no':
      return _$aPIChargerSpotServiceTimeBusinessDayEnum_no;
    case 'unknown':
      return _$aPIChargerSpotServiceTimeBusinessDayEnum_unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<APIChargerSpotServiceTimeBusinessDayEnum>
    _$aPIChargerSpotServiceTimeBusinessDayEnumValues = new BuiltSet<
        APIChargerSpotServiceTimeBusinessDayEnum>(const <APIChargerSpotServiceTimeBusinessDayEnum>[
  _$aPIChargerSpotServiceTimeBusinessDayEnum_yes,
  _$aPIChargerSpotServiceTimeBusinessDayEnum_no,
  _$aPIChargerSpotServiceTimeBusinessDayEnum_unknown,
]);

const APIChargerSpotServiceTimeDayEnum
    _$aPIChargerSpotServiceTimeDayEnum_sunday =
    const APIChargerSpotServiceTimeDayEnum._('sunday');
const APIChargerSpotServiceTimeDayEnum
    _$aPIChargerSpotServiceTimeDayEnum_monday =
    const APIChargerSpotServiceTimeDayEnum._('monday');
const APIChargerSpotServiceTimeDayEnum
    _$aPIChargerSpotServiceTimeDayEnum_tuesday =
    const APIChargerSpotServiceTimeDayEnum._('tuesday');
const APIChargerSpotServiceTimeDayEnum
    _$aPIChargerSpotServiceTimeDayEnum_wednesday =
    const APIChargerSpotServiceTimeDayEnum._('wednesday');
const APIChargerSpotServiceTimeDayEnum
    _$aPIChargerSpotServiceTimeDayEnum_thursday =
    const APIChargerSpotServiceTimeDayEnum._('thursday');
const APIChargerSpotServiceTimeDayEnum
    _$aPIChargerSpotServiceTimeDayEnum_friday =
    const APIChargerSpotServiceTimeDayEnum._('friday');
const APIChargerSpotServiceTimeDayEnum
    _$aPIChargerSpotServiceTimeDayEnum_saturday =
    const APIChargerSpotServiceTimeDayEnum._('saturday');
const APIChargerSpotServiceTimeDayEnum
    _$aPIChargerSpotServiceTimeDayEnum_holiday =
    const APIChargerSpotServiceTimeDayEnum._('holiday');
const APIChargerSpotServiceTimeDayEnum
    _$aPIChargerSpotServiceTimeDayEnum_weekday =
    const APIChargerSpotServiceTimeDayEnum._('weekday');

APIChargerSpotServiceTimeDayEnum _$aPIChargerSpotServiceTimeDayEnumValueOf(
    String name) {
  switch (name) {
    case 'sunday':
      return _$aPIChargerSpotServiceTimeDayEnum_sunday;
    case 'monday':
      return _$aPIChargerSpotServiceTimeDayEnum_monday;
    case 'tuesday':
      return _$aPIChargerSpotServiceTimeDayEnum_tuesday;
    case 'wednesday':
      return _$aPIChargerSpotServiceTimeDayEnum_wednesday;
    case 'thursday':
      return _$aPIChargerSpotServiceTimeDayEnum_thursday;
    case 'friday':
      return _$aPIChargerSpotServiceTimeDayEnum_friday;
    case 'saturday':
      return _$aPIChargerSpotServiceTimeDayEnum_saturday;
    case 'holiday':
      return _$aPIChargerSpotServiceTimeDayEnum_holiday;
    case 'weekday':
      return _$aPIChargerSpotServiceTimeDayEnum_weekday;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<APIChargerSpotServiceTimeDayEnum>
    _$aPIChargerSpotServiceTimeDayEnumValues = new BuiltSet<
        APIChargerSpotServiceTimeDayEnum>(const <APIChargerSpotServiceTimeDayEnum>[
  _$aPIChargerSpotServiceTimeDayEnum_sunday,
  _$aPIChargerSpotServiceTimeDayEnum_monday,
  _$aPIChargerSpotServiceTimeDayEnum_tuesday,
  _$aPIChargerSpotServiceTimeDayEnum_wednesday,
  _$aPIChargerSpotServiceTimeDayEnum_thursday,
  _$aPIChargerSpotServiceTimeDayEnum_friday,
  _$aPIChargerSpotServiceTimeDayEnum_saturday,
  _$aPIChargerSpotServiceTimeDayEnum_holiday,
  _$aPIChargerSpotServiceTimeDayEnum_weekday,
]);

Serializer<APIChargerSpotServiceTimeBusinessDayEnum>
    _$aPIChargerSpotServiceTimeBusinessDayEnumSerializer =
    new _$APIChargerSpotServiceTimeBusinessDayEnumSerializer();
Serializer<APIChargerSpotServiceTimeDayEnum>
    _$aPIChargerSpotServiceTimeDayEnumSerializer =
    new _$APIChargerSpotServiceTimeDayEnumSerializer();

class _$APIChargerSpotServiceTimeBusinessDayEnumSerializer
    implements PrimitiveSerializer<APIChargerSpotServiceTimeBusinessDayEnum> {
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
    APIChargerSpotServiceTimeBusinessDayEnum
  ];
  @override
  final String wireName = 'APIChargerSpotServiceTimeBusinessDayEnum';

  @override
  Object serialize(Serializers serializers,
          APIChargerSpotServiceTimeBusinessDayEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  APIChargerSpotServiceTimeBusinessDayEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      APIChargerSpotServiceTimeBusinessDayEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$APIChargerSpotServiceTimeDayEnumSerializer
    implements PrimitiveSerializer<APIChargerSpotServiceTimeDayEnum> {
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
  final Iterable<Type> types = const <Type>[APIChargerSpotServiceTimeDayEnum];
  @override
  final String wireName = 'APIChargerSpotServiceTimeDayEnum';

  @override
  Object serialize(
          Serializers serializers, APIChargerSpotServiceTimeDayEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  APIChargerSpotServiceTimeDayEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      APIChargerSpotServiceTimeDayEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$APIChargerSpotServiceTime extends APIChargerSpotServiceTime {
  @override
  final APIChargerSpotServiceTimeBusinessDayEnum businessDay;
  @override
  final APIChargerSpotServiceTimeDayEnum day;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final bool today;

  factory _$APIChargerSpotServiceTime(
          [void Function(APIChargerSpotServiceTimeBuilder)? updates]) =>
      (new APIChargerSpotServiceTimeBuilder()..update(updates))._build();

  _$APIChargerSpotServiceTime._(
      {required this.businessDay,
      required this.day,
      this.startTime,
      this.endTime,
      required this.today})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        businessDay, r'APIChargerSpotServiceTime', 'businessDay');
    BuiltValueNullFieldError.checkNotNull(
        day, r'APIChargerSpotServiceTime', 'day');
    BuiltValueNullFieldError.checkNotNull(
        today, r'APIChargerSpotServiceTime', 'today');
  }

  @override
  APIChargerSpotServiceTime rebuild(
          void Function(APIChargerSpotServiceTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIChargerSpotServiceTimeBuilder toBuilder() =>
      new APIChargerSpotServiceTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIChargerSpotServiceTime &&
        businessDay == other.businessDay &&
        day == other.day &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        today == other.today;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, businessDay.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, today.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'APIChargerSpotServiceTime')
          ..add('businessDay', businessDay)
          ..add('day', day)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('today', today))
        .toString();
  }
}

class APIChargerSpotServiceTimeBuilder
    implements
        Builder<APIChargerSpotServiceTime, APIChargerSpotServiceTimeBuilder> {
  _$APIChargerSpotServiceTime? _$v;

  APIChargerSpotServiceTimeBusinessDayEnum? _businessDay;
  APIChargerSpotServiceTimeBusinessDayEnum? get businessDay =>
      _$this._businessDay;
  set businessDay(APIChargerSpotServiceTimeBusinessDayEnum? businessDay) =>
      _$this._businessDay = businessDay;

  APIChargerSpotServiceTimeDayEnum? _day;
  APIChargerSpotServiceTimeDayEnum? get day => _$this._day;
  set day(APIChargerSpotServiceTimeDayEnum? day) => _$this._day = day;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  bool? _today;
  bool? get today => _$this._today;
  set today(bool? today) => _$this._today = today;

  APIChargerSpotServiceTimeBuilder() {
    APIChargerSpotServiceTime._defaults(this);
  }

  APIChargerSpotServiceTimeBuilder get _$this {
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
  void replace(APIChargerSpotServiceTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$APIChargerSpotServiceTime;
  }

  @override
  void update(void Function(APIChargerSpotServiceTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIChargerSpotServiceTime build() => _build();

  _$APIChargerSpotServiceTime _build() {
    final _$result = _$v ??
        new _$APIChargerSpotServiceTime._(
            businessDay: BuiltValueNullFieldError.checkNotNull(
                businessDay, r'APIChargerSpotServiceTime', 'businessDay'),
            day: BuiltValueNullFieldError.checkNotNull(
                day, r'APIChargerSpotServiceTime', 'day'),
            startTime: startTime,
            endTime: endTime,
            today: BuiltValueNullFieldError.checkNotNull(
                today, r'APIChargerSpotServiceTime', 'today'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
