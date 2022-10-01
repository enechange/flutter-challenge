// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_spot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChargerSpotSource_Enum _$chargerSpotSourceEnum_enechange =
    const ChargerSpotSource_Enum._('enechange');
const ChargerSpotSource_Enum _$chargerSpotSourceEnum_gogoev =
    const ChargerSpotSource_Enum._('gogoev');

ChargerSpotSource_Enum _$chargerSpotSourceEnumValueOf(String name) {
  switch (name) {
    case 'enechange':
      return _$chargerSpotSourceEnum_enechange;
    case 'gogoev':
      return _$chargerSpotSourceEnum_gogoev;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChargerSpotSource_Enum> _$chargerSpotSourceEnumValues =
    new BuiltSet<ChargerSpotSource_Enum>(const <ChargerSpotSource_Enum>[
  _$chargerSpotSourceEnum_enechange,
  _$chargerSpotSourceEnum_gogoev,
]);

const ChargerSpotMarkerLabelEnum _$chargerSpotMarkerLabelEnum_enechange =
    const ChargerSpotMarkerLabelEnum._('enechange');
const ChargerSpotMarkerLabelEnum _$chargerSpotMarkerLabelEnum_chademo =
    const ChargerSpotMarkerLabelEnum._('chademo');
const ChargerSpotMarkerLabelEnum _$chargerSpotMarkerLabelEnum_tesla =
    const ChargerSpotMarkerLabelEnum._('tesla');
const ChargerSpotMarkerLabelEnum _$chargerSpotMarkerLabelEnum_chademoTesla =
    const ChargerSpotMarkerLabelEnum._('chademoTesla');
const ChargerSpotMarkerLabelEnum _$chargerSpotMarkerLabelEnum_normal =
    const ChargerSpotMarkerLabelEnum._('normal');

ChargerSpotMarkerLabelEnum _$chargerSpotMarkerLabelEnumValueOf(String name) {
  switch (name) {
    case 'enechange':
      return _$chargerSpotMarkerLabelEnum_enechange;
    case 'chademo':
      return _$chargerSpotMarkerLabelEnum_chademo;
    case 'tesla':
      return _$chargerSpotMarkerLabelEnum_tesla;
    case 'chademoTesla':
      return _$chargerSpotMarkerLabelEnum_chademoTesla;
    case 'normal':
      return _$chargerSpotMarkerLabelEnum_normal;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChargerSpotMarkerLabelEnum> _$chargerSpotMarkerLabelEnumValues =
    new BuiltSet<ChargerSpotMarkerLabelEnum>(const <ChargerSpotMarkerLabelEnum>[
  _$chargerSpotMarkerLabelEnum_enechange,
  _$chargerSpotMarkerLabelEnum_chademo,
  _$chargerSpotMarkerLabelEnum_tesla,
  _$chargerSpotMarkerLabelEnum_chademoTesla,
  _$chargerSpotMarkerLabelEnum_normal,
]);

const ChargerSpotNowAvailableEnum _$chargerSpotNowAvailableEnum_yes =
    const ChargerSpotNowAvailableEnum._('yes');
const ChargerSpotNowAvailableEnum _$chargerSpotNowAvailableEnum_no =
    const ChargerSpotNowAvailableEnum._('no');
const ChargerSpotNowAvailableEnum _$chargerSpotNowAvailableEnum_unknown =
    const ChargerSpotNowAvailableEnum._('unknown');

ChargerSpotNowAvailableEnum _$chargerSpotNowAvailableEnumValueOf(String name) {
  switch (name) {
    case 'yes':
      return _$chargerSpotNowAvailableEnum_yes;
    case 'no':
      return _$chargerSpotNowAvailableEnum_no;
    case 'unknown':
      return _$chargerSpotNowAvailableEnum_unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChargerSpotNowAvailableEnum>
    _$chargerSpotNowAvailableEnumValues = new BuiltSet<
        ChargerSpotNowAvailableEnum>(const <ChargerSpotNowAvailableEnum>[
  _$chargerSpotNowAvailableEnum_yes,
  _$chargerSpotNowAvailableEnum_no,
  _$chargerSpotNowAvailableEnum_unknown,
]);

Serializer<ChargerSpotSource_Enum> _$chargerSpotSourceEnumSerializer =
    new _$ChargerSpotSource_EnumSerializer();
Serializer<ChargerSpotMarkerLabelEnum> _$chargerSpotMarkerLabelEnumSerializer =
    new _$ChargerSpotMarkerLabelEnumSerializer();
Serializer<ChargerSpotNowAvailableEnum>
    _$chargerSpotNowAvailableEnumSerializer =
    new _$ChargerSpotNowAvailableEnumSerializer();

class _$ChargerSpotSource_EnumSerializer
    implements PrimitiveSerializer<ChargerSpotSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'enechange': 'enechange',
    'gogoev': 'gogoev',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'enechange': 'enechange',
    'gogoev': 'gogoev',
  };

  @override
  final Iterable<Type> types = const <Type>[ChargerSpotSource_Enum];
  @override
  final String wireName = 'ChargerSpotSource_Enum';

  @override
  Object serialize(Serializers serializers, ChargerSpotSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChargerSpotSource_Enum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChargerSpotSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChargerSpotMarkerLabelEnumSerializer
    implements PrimitiveSerializer<ChargerSpotMarkerLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'enechange': 'enechange',
    'chademo': 'chademo',
    'tesla': 'tesla',
    'chademoTesla': 'chademo-tesla',
    'normal': 'normal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'enechange': 'enechange',
    'chademo': 'chademo',
    'tesla': 'tesla',
    'chademo-tesla': 'chademoTesla',
    'normal': 'normal',
  };

  @override
  final Iterable<Type> types = const <Type>[ChargerSpotMarkerLabelEnum];
  @override
  final String wireName = 'ChargerSpotMarkerLabelEnum';

  @override
  Object serialize(Serializers serializers, ChargerSpotMarkerLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChargerSpotMarkerLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChargerSpotMarkerLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChargerSpotNowAvailableEnumSerializer
    implements PrimitiveSerializer<ChargerSpotNowAvailableEnum> {
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
  final Iterable<Type> types = const <Type>[ChargerSpotNowAvailableEnum];
  @override
  final String wireName = 'ChargerSpotNowAvailableEnum';

  @override
  Object serialize(Serializers serializers, ChargerSpotNowAvailableEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChargerSpotNowAvailableEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChargerSpotNowAvailableEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChargerSpot extends ChargerSpot {
  @override
  final String uuid;
  @override
  final String name;
  @override
  final num latitude;
  @override
  final num longitude;
  @override
  final ChargerSpotSource_Enum source_;
  @override
  final String? note;
  @override
  final BuiltList<String>? directions;
  @override
  final ChargerSpotMarkerLabelEnum? markerLabel;
  @override
  final BuiltList<ChargerSpotImage>? images;
  @override
  final String? serviceTimeNote;
  @override
  final ChargerSpotNowAvailableEnum? nowAvailable;
  @override
  final BuiltList<GroupedTotalUnitPricesThisMonthNextMonth>?
      groupedTotalUnitPricesThisMonthNextMonth;
  @override
  final BuiltList<GroupedTotalUnitPricesThisMonthNextMonthByUser>?
      groupedTotalUnitPricesThisMonthNextMonthByUser;
  @override
  final BuiltList<ChargerSpotServiceTime>? chargerSpotServiceTimes;
  @override
  final BuiltList<ChargerDevice>? chargerDevices;
  @override
  final BuiltList<GogoevChargerDevice>? gogoevChargerDevices;
  @override
  final String? address;
  @override
  final String? facilityType;
  @override
  final String? phoneNumber;
  @override
  final String? parkingFee;
  @override
  final String? advanceContact;
  @override
  final BuiltList<String>? gogoevNotes;

  factory _$ChargerSpot([void Function(ChargerSpotBuilder)? updates]) =>
      (new ChargerSpotBuilder()..update(updates))._build();

  _$ChargerSpot._(
      {required this.uuid,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.source_,
      this.note,
      this.directions,
      this.markerLabel,
      this.images,
      this.serviceTimeNote,
      this.nowAvailable,
      this.groupedTotalUnitPricesThisMonthNextMonth,
      this.groupedTotalUnitPricesThisMonthNextMonthByUser,
      this.chargerSpotServiceTimes,
      this.chargerDevices,
      this.gogoevChargerDevices,
      this.address,
      this.facilityType,
      this.phoneNumber,
      this.parkingFee,
      this.advanceContact,
      this.gogoevNotes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uuid, r'ChargerSpot', 'uuid');
    BuiltValueNullFieldError.checkNotNull(name, r'ChargerSpot', 'name');
    BuiltValueNullFieldError.checkNotNull(latitude, r'ChargerSpot', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, r'ChargerSpot', 'longitude');
    BuiltValueNullFieldError.checkNotNull(source_, r'ChargerSpot', 'source_');
  }

  @override
  ChargerSpot rebuild(void Function(ChargerSpotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChargerSpotBuilder toBuilder() => new ChargerSpotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChargerSpot &&
        uuid == other.uuid &&
        name == other.name &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        source_ == other.source_ &&
        note == other.note &&
        directions == other.directions &&
        markerLabel == other.markerLabel &&
        images == other.images &&
        serviceTimeNote == other.serviceTimeNote &&
        nowAvailable == other.nowAvailable &&
        groupedTotalUnitPricesThisMonthNextMonth ==
            other.groupedTotalUnitPricesThisMonthNextMonth &&
        groupedTotalUnitPricesThisMonthNextMonthByUser ==
            other.groupedTotalUnitPricesThisMonthNextMonthByUser &&
        chargerSpotServiceTimes == other.chargerSpotServiceTimes &&
        chargerDevices == other.chargerDevices &&
        gogoevChargerDevices == other.gogoevChargerDevices &&
        address == other.address &&
        facilityType == other.facilityType &&
        phoneNumber == other.phoneNumber &&
        parkingFee == other.parkingFee &&
        advanceContact == other.advanceContact &&
        gogoevNotes == other.gogoevNotes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc(0, uuid.hashCode), name.hashCode), latitude.hashCode),
                                                                                longitude.hashCode),
                                                                            source_.hashCode),
                                                                        note.hashCode),
                                                                    directions.hashCode),
                                                                markerLabel.hashCode),
                                                            images.hashCode),
                                                        serviceTimeNote.hashCode),
                                                    nowAvailable.hashCode),
                                                groupedTotalUnitPricesThisMonthNextMonth.hashCode),
                                            groupedTotalUnitPricesThisMonthNextMonthByUser.hashCode),
                                        chargerSpotServiceTimes.hashCode),
                                    chargerDevices.hashCode),
                                gogoevChargerDevices.hashCode),
                            address.hashCode),
                        facilityType.hashCode),
                    phoneNumber.hashCode),
                parkingFee.hashCode),
            advanceContact.hashCode),
        gogoevNotes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChargerSpot')
          ..add('uuid', uuid)
          ..add('name', name)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('source_', source_)
          ..add('note', note)
          ..add('directions', directions)
          ..add('markerLabel', markerLabel)
          ..add('images', images)
          ..add('serviceTimeNote', serviceTimeNote)
          ..add('nowAvailable', nowAvailable)
          ..add('groupedTotalUnitPricesThisMonthNextMonth',
              groupedTotalUnitPricesThisMonthNextMonth)
          ..add('groupedTotalUnitPricesThisMonthNextMonthByUser',
              groupedTotalUnitPricesThisMonthNextMonthByUser)
          ..add('chargerSpotServiceTimes', chargerSpotServiceTimes)
          ..add('chargerDevices', chargerDevices)
          ..add('gogoevChargerDevices', gogoevChargerDevices)
          ..add('address', address)
          ..add('facilityType', facilityType)
          ..add('phoneNumber', phoneNumber)
          ..add('parkingFee', parkingFee)
          ..add('advanceContact', advanceContact)
          ..add('gogoevNotes', gogoevNotes))
        .toString();
  }
}

class ChargerSpotBuilder implements Builder<ChargerSpot, ChargerSpotBuilder> {
  _$ChargerSpot? _$v;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  ChargerSpotSource_Enum? _source_;
  ChargerSpotSource_Enum? get source_ => _$this._source_;
  set source_(ChargerSpotSource_Enum? source_) => _$this._source_ = source_;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  ListBuilder<String>? _directions;
  ListBuilder<String> get directions =>
      _$this._directions ??= new ListBuilder<String>();
  set directions(ListBuilder<String>? directions) =>
      _$this._directions = directions;

  ChargerSpotMarkerLabelEnum? _markerLabel;
  ChargerSpotMarkerLabelEnum? get markerLabel => _$this._markerLabel;
  set markerLabel(ChargerSpotMarkerLabelEnum? markerLabel) =>
      _$this._markerLabel = markerLabel;

  ListBuilder<ChargerSpotImage>? _images;
  ListBuilder<ChargerSpotImage> get images =>
      _$this._images ??= new ListBuilder<ChargerSpotImage>();
  set images(ListBuilder<ChargerSpotImage>? images) => _$this._images = images;

  String? _serviceTimeNote;
  String? get serviceTimeNote => _$this._serviceTimeNote;
  set serviceTimeNote(String? serviceTimeNote) =>
      _$this._serviceTimeNote = serviceTimeNote;

  ChargerSpotNowAvailableEnum? _nowAvailable;
  ChargerSpotNowAvailableEnum? get nowAvailable => _$this._nowAvailable;
  set nowAvailable(ChargerSpotNowAvailableEnum? nowAvailable) =>
      _$this._nowAvailable = nowAvailable;

  ListBuilder<GroupedTotalUnitPricesThisMonthNextMonth>?
      _groupedTotalUnitPricesThisMonthNextMonth;
  ListBuilder<GroupedTotalUnitPricesThisMonthNextMonth>
      get groupedTotalUnitPricesThisMonthNextMonth =>
          _$this._groupedTotalUnitPricesThisMonthNextMonth ??=
              new ListBuilder<GroupedTotalUnitPricesThisMonthNextMonth>();
  set groupedTotalUnitPricesThisMonthNextMonth(
          ListBuilder<GroupedTotalUnitPricesThisMonthNextMonth>?
              groupedTotalUnitPricesThisMonthNextMonth) =>
      _$this._groupedTotalUnitPricesThisMonthNextMonth =
          groupedTotalUnitPricesThisMonthNextMonth;

  ListBuilder<GroupedTotalUnitPricesThisMonthNextMonthByUser>?
      _groupedTotalUnitPricesThisMonthNextMonthByUser;
  ListBuilder<GroupedTotalUnitPricesThisMonthNextMonthByUser>
      get groupedTotalUnitPricesThisMonthNextMonthByUser =>
          _$this._groupedTotalUnitPricesThisMonthNextMonthByUser ??=
              new ListBuilder<GroupedTotalUnitPricesThisMonthNextMonthByUser>();
  set groupedTotalUnitPricesThisMonthNextMonthByUser(
          ListBuilder<GroupedTotalUnitPricesThisMonthNextMonthByUser>?
              groupedTotalUnitPricesThisMonthNextMonthByUser) =>
      _$this._groupedTotalUnitPricesThisMonthNextMonthByUser =
          groupedTotalUnitPricesThisMonthNextMonthByUser;

  ListBuilder<ChargerSpotServiceTime>? _chargerSpotServiceTimes;
  ListBuilder<ChargerSpotServiceTime> get chargerSpotServiceTimes =>
      _$this._chargerSpotServiceTimes ??=
          new ListBuilder<ChargerSpotServiceTime>();
  set chargerSpotServiceTimes(
          ListBuilder<ChargerSpotServiceTime>? chargerSpotServiceTimes) =>
      _$this._chargerSpotServiceTimes = chargerSpotServiceTimes;

  ListBuilder<ChargerDevice>? _chargerDevices;
  ListBuilder<ChargerDevice> get chargerDevices =>
      _$this._chargerDevices ??= new ListBuilder<ChargerDevice>();
  set chargerDevices(ListBuilder<ChargerDevice>? chargerDevices) =>
      _$this._chargerDevices = chargerDevices;

  ListBuilder<GogoevChargerDevice>? _gogoevChargerDevices;
  ListBuilder<GogoevChargerDevice> get gogoevChargerDevices =>
      _$this._gogoevChargerDevices ??= new ListBuilder<GogoevChargerDevice>();
  set gogoevChargerDevices(
          ListBuilder<GogoevChargerDevice>? gogoevChargerDevices) =>
      _$this._gogoevChargerDevices = gogoevChargerDevices;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _facilityType;
  String? get facilityType => _$this._facilityType;
  set facilityType(String? facilityType) => _$this._facilityType = facilityType;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _parkingFee;
  String? get parkingFee => _$this._parkingFee;
  set parkingFee(String? parkingFee) => _$this._parkingFee = parkingFee;

  String? _advanceContact;
  String? get advanceContact => _$this._advanceContact;
  set advanceContact(String? advanceContact) =>
      _$this._advanceContact = advanceContact;

  ListBuilder<String>? _gogoevNotes;
  ListBuilder<String> get gogoevNotes =>
      _$this._gogoevNotes ??= new ListBuilder<String>();
  set gogoevNotes(ListBuilder<String>? gogoevNotes) =>
      _$this._gogoevNotes = gogoevNotes;

  ChargerSpotBuilder() {
    ChargerSpot._defaults(this);
  }

  ChargerSpotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uuid = $v.uuid;
      _name = $v.name;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _source_ = $v.source_;
      _note = $v.note;
      _directions = $v.directions?.toBuilder();
      _markerLabel = $v.markerLabel;
      _images = $v.images?.toBuilder();
      _serviceTimeNote = $v.serviceTimeNote;
      _nowAvailable = $v.nowAvailable;
      _groupedTotalUnitPricesThisMonthNextMonth =
          $v.groupedTotalUnitPricesThisMonthNextMonth?.toBuilder();
      _groupedTotalUnitPricesThisMonthNextMonthByUser =
          $v.groupedTotalUnitPricesThisMonthNextMonthByUser?.toBuilder();
      _chargerSpotServiceTimes = $v.chargerSpotServiceTimes?.toBuilder();
      _chargerDevices = $v.chargerDevices?.toBuilder();
      _gogoevChargerDevices = $v.gogoevChargerDevices?.toBuilder();
      _address = $v.address;
      _facilityType = $v.facilityType;
      _phoneNumber = $v.phoneNumber;
      _parkingFee = $v.parkingFee;
      _advanceContact = $v.advanceContact;
      _gogoevNotes = $v.gogoevNotes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChargerSpot other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChargerSpot;
  }

  @override
  void update(void Function(ChargerSpotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChargerSpot build() => _build();

  _$ChargerSpot _build() {
    _$ChargerSpot _$result;
    try {
      _$result = _$v ??
          new _$ChargerSpot._(
              uuid: BuiltValueNullFieldError.checkNotNull(
                  uuid, r'ChargerSpot', 'uuid'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'ChargerSpot', 'name'),
              latitude: BuiltValueNullFieldError.checkNotNull(
                  latitude, r'ChargerSpot', 'latitude'),
              longitude: BuiltValueNullFieldError.checkNotNull(
                  longitude, r'ChargerSpot', 'longitude'),
              source_: BuiltValueNullFieldError.checkNotNull(
                  source_, r'ChargerSpot', 'source_'),
              note: note,
              directions: _directions?.build(),
              markerLabel: markerLabel,
              images: _images?.build(),
              serviceTimeNote: serviceTimeNote,
              nowAvailable: nowAvailable,
              groupedTotalUnitPricesThisMonthNextMonth:
                  _groupedTotalUnitPricesThisMonthNextMonth?.build(),
              groupedTotalUnitPricesThisMonthNextMonthByUser:
                  _groupedTotalUnitPricesThisMonthNextMonthByUser?.build(),
              chargerSpotServiceTimes: _chargerSpotServiceTimes?.build(),
              chargerDevices: _chargerDevices?.build(),
              gogoevChargerDevices: _gogoevChargerDevices?.build(),
              address: address,
              facilityType: facilityType,
              phoneNumber: phoneNumber,
              parkingFee: parkingFee,
              advanceContact: advanceContact,
              gogoevNotes: _gogoevNotes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'directions';
        _directions?.build();

        _$failedField = 'images';
        _images?.build();

        _$failedField = 'groupedTotalUnitPricesThisMonthNextMonth';
        _groupedTotalUnitPricesThisMonthNextMonth?.build();
        _$failedField = 'groupedTotalUnitPricesThisMonthNextMonthByUser';
        _groupedTotalUnitPricesThisMonthNextMonthByUser?.build();
        _$failedField = 'chargerSpotServiceTimes';
        _chargerSpotServiceTimes?.build();
        _$failedField = 'chargerDevices';
        _chargerDevices?.build();
        _$failedField = 'gogoevChargerDevices';
        _gogoevChargerDevices?.build();

        _$failedField = 'gogoevNotes';
        _gogoevNotes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChargerSpot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
