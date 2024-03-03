//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/charger_spot_service_time.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/charger_device.dart';
import 'package:openapi/src/model/charger_spot_image.dart';
import 'package:openapi/src/model/grouped_total_unit_prices_this_month_next_month_by_user.dart';
import 'package:openapi/src/model/gogoev_charger_device.dart';
import 'package:openapi/src/model/grouped_total_unit_prices_this_month_next_month.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'charger_spot.g.dart';

/// ChargerSpot
///
/// Properties:
/// * [uuid] - 充電スポットを一意に識別するためのuuid
/// * [name] - 充電スポットの名称
/// * [latitude] - 充電スポットの緯度
/// * [longitude] - 充電スポットの経度
/// * [source_] - 充電スポット情報のソース
/// * [note] - 備考
/// * [directions] - 道順（fields指定がない場合は返却される）
/// * [markerLabel] - マップのマーカーのラベル。
/// * [images] - 充電スポットの写真URL（fields指定がない場合は返却される）
/// * [serviceTimeNote] 
/// * [nowAvailable] - 現在営業中かどうか（fields指定がない場合は返却される）
/// * [groupedTotalUnitPricesThisMonthNextMonth] - 同じ充電出力、単価でグルーピングされた単価。
/// * [groupedTotalUnitPricesThisMonthNextMonthByUser] - プロモコードを登録したユーザーに応じて、同じ充電出力、単価でグルーピングされた単価（プロモコードを登録すると充電単価が変わるケースがある）。
/// * [chargerSpotServiceTimes] - サービス提供時間（データが存在しない場合は空配列、fields指定がない場合は返却される）
/// * [chargerDevices] - 充電器情報
/// * [gogoevChargerDevices] - Gogoevの充電器情報（Gogoevの充電器のみ、fields指定がない場合は返却される）
/// * [address] - 住所（Gogoevの充電器のみ）
/// * [facilityType] - 施設種別（Gogoevの充電器のみ）
/// * [phoneNumber] - 電話番号（Gogoevの充電器のみ）
/// * [parkingFee] - 駐車料金
/// * [advanceContact] - 事前連絡（Gogoevの充電器のみ）
/// * [gogoevNotes] - 備考（Gogoevの充電器のみ）
/// * [maintenanceNote] - 休止情報に関する備考
/// * [maintenanceStatus] - メンテナンス状態
@BuiltValue()
abstract class ChargerSpot implements Built<ChargerSpot, ChargerSpotBuilder> {
  /// 充電スポットを一意に識別するためのuuid
  @BuiltValueField(wireName: r'uuid')
  String get uuid;

  /// 充電スポットの名称
  @BuiltValueField(wireName: r'name')
  String get name;

  /// 充電スポットの緯度
  @BuiltValueField(wireName: r'latitude')
  num get latitude;

  /// 充電スポットの経度
  @BuiltValueField(wireName: r'longitude')
  num get longitude;

  /// 充電スポット情報のソース
  @BuiltValueField(wireName: r'source')
  ChargerSpotSource_Enum get source_;
  // enum source_Enum {  enechange,  gogoev,  };

  /// 備考
  @BuiltValueField(wireName: r'note')
  String? get note;

  /// 道順（fields指定がない場合は返却される）
  @BuiltValueField(wireName: r'directions')
  BuiltList<String>? get directions;

  /// マップのマーカーのラベル。
  @BuiltValueField(wireName: r'marker_label')
  ChargerSpotMarkerLabelEnum? get markerLabel;
  // enum markerLabelEnum {  enechange,  chademo,  tesla,  chademo-tesla,  normal,  };

  /// 充電スポットの写真URL（fields指定がない場合は返却される）
  @BuiltValueField(wireName: r'images')
  BuiltList<ChargerSpotImage>? get images;

  @BuiltValueField(wireName: r'service_time_note')
  String? get serviceTimeNote;

  /// 現在営業中かどうか（fields指定がない場合は返却される）
  @BuiltValueField(wireName: r'now_available')
  ChargerSpotNowAvailableEnum? get nowAvailable;
  // enum nowAvailableEnum {  yes,  no,  unknown,  };

  /// 同じ充電出力、単価でグルーピングされた単価。
  @BuiltValueField(wireName: r'grouped_total_unit_prices_this_month_next_month')
  BuiltList<GroupedTotalUnitPricesThisMonthNextMonth>? get groupedTotalUnitPricesThisMonthNextMonth;

  /// プロモコードを登録したユーザーに応じて、同じ充電出力、単価でグルーピングされた単価（プロモコードを登録すると充電単価が変わるケースがある）。
  @BuiltValueField(wireName: r'grouped_total_unit_prices_this_month_next_month_by_user')
  BuiltList<GroupedTotalUnitPricesThisMonthNextMonthByUser>? get groupedTotalUnitPricesThisMonthNextMonthByUser;

  /// サービス提供時間（データが存在しない場合は空配列、fields指定がない場合は返却される）
  @BuiltValueField(wireName: r'charger_spot_service_times')
  BuiltList<ChargerSpotServiceTime>? get chargerSpotServiceTimes;

  /// 充電器情報
  @BuiltValueField(wireName: r'charger_devices')
  BuiltList<ChargerDevice>? get chargerDevices;

  /// Gogoevの充電器情報（Gogoevの充電器のみ、fields指定がない場合は返却される）
  @BuiltValueField(wireName: r'gogoev_charger_devices')
  BuiltList<GogoevChargerDevice>? get gogoevChargerDevices;

  /// 住所（Gogoevの充電器のみ）
  @BuiltValueField(wireName: r'address')
  String? get address;

  /// 施設種別（Gogoevの充電器のみ）
  @BuiltValueField(wireName: r'facility_type')
  String? get facilityType;

  /// 電話番号（Gogoevの充電器のみ）
  @BuiltValueField(wireName: r'phone_number')
  String? get phoneNumber;

  /// 駐車料金
  @BuiltValueField(wireName: r'parking_fee')
  String? get parkingFee;

  /// 事前連絡（Gogoevの充電器のみ）
  @BuiltValueField(wireName: r'advance_contact')
  String? get advanceContact;

  /// 備考（Gogoevの充電器のみ）
  @BuiltValueField(wireName: r'gogoev_notes')
  BuiltList<String>? get gogoevNotes;

  /// 休止情報に関する備考
  @BuiltValueField(wireName: r'maintenance_note')
  BuiltList<String>? get maintenanceNote;

  /// メンテナンス状態
  @BuiltValueField(wireName: r'maintenance_status')
  ChargerSpotMaintenanceStatusEnum? get maintenanceStatus;
  // enum maintenanceStatusEnum {  normal,  notice,  out_of_order,  on_break,  };

  ChargerSpot._();

  factory ChargerSpot([void updates(ChargerSpotBuilder b)]) = _$ChargerSpot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChargerSpotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChargerSpot> get serializer => _$ChargerSpotSerializer();
}

class _$ChargerSpotSerializer implements PrimitiveSerializer<ChargerSpot> {
  @override
  final Iterable<Type> types = const [ChargerSpot, _$ChargerSpot];

  @override
  final String wireName = r'ChargerSpot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChargerSpot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uuid';
    yield serializers.serialize(
      object.uuid,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(ChargerSpotSource_Enum),
    );
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.directions != null) {
      yield r'directions';
      yield serializers.serialize(
        object.directions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.markerLabel != null) {
      yield r'marker_label';
      yield serializers.serialize(
        object.markerLabel,
        specifiedType: const FullType(ChargerSpotMarkerLabelEnum),
      );
    }
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType: const FullType(BuiltList, [FullType(ChargerSpotImage)]),
      );
    }
    if (object.serviceTimeNote != null) {
      yield r'service_time_note';
      yield serializers.serialize(
        object.serviceTimeNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nowAvailable != null) {
      yield r'now_available';
      yield serializers.serialize(
        object.nowAvailable,
        specifiedType: const FullType(ChargerSpotNowAvailableEnum),
      );
    }
    if (object.groupedTotalUnitPricesThisMonthNextMonth != null) {
      yield r'grouped_total_unit_prices_this_month_next_month';
      yield serializers.serialize(
        object.groupedTotalUnitPricesThisMonthNextMonth,
        specifiedType: const FullType(BuiltList, [FullType(GroupedTotalUnitPricesThisMonthNextMonth)]),
      );
    }
    if (object.groupedTotalUnitPricesThisMonthNextMonthByUser != null) {
      yield r'grouped_total_unit_prices_this_month_next_month_by_user';
      yield serializers.serialize(
        object.groupedTotalUnitPricesThisMonthNextMonthByUser,
        specifiedType: const FullType(BuiltList, [FullType(GroupedTotalUnitPricesThisMonthNextMonthByUser)]),
      );
    }
    if (object.chargerSpotServiceTimes != null) {
      yield r'charger_spot_service_times';
      yield serializers.serialize(
        object.chargerSpotServiceTimes,
        specifiedType: const FullType(BuiltList, [FullType(ChargerSpotServiceTime)]),
      );
    }
    if (object.chargerDevices != null) {
      yield r'charger_devices';
      yield serializers.serialize(
        object.chargerDevices,
        specifiedType: const FullType(BuiltList, [FullType(ChargerDevice)]),
      );
    }
    if (object.gogoevChargerDevices != null) {
      yield r'gogoev_charger_devices';
      yield serializers.serialize(
        object.gogoevChargerDevices,
        specifiedType: const FullType(BuiltList, [FullType(GogoevChargerDevice)]),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.facilityType != null) {
      yield r'facility_type';
      yield serializers.serialize(
        object.facilityType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phoneNumber != null) {
      yield r'phone_number';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.parkingFee != null) {
      yield r'parking_fee';
      yield serializers.serialize(
        object.parkingFee,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.advanceContact != null) {
      yield r'advance_contact';
      yield serializers.serialize(
        object.advanceContact,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.gogoevNotes != null) {
      yield r'gogoev_notes';
      yield serializers.serialize(
        object.gogoevNotes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.maintenanceNote != null) {
      yield r'maintenance_note';
      yield serializers.serialize(
        object.maintenanceNote,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.maintenanceStatus != null) {
      yield r'maintenance_status';
      yield serializers.serialize(
        object.maintenanceStatus,
        specifiedType: const FullType(ChargerSpotMaintenanceStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChargerSpot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChargerSpotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uuid = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChargerSpotSource_Enum),
          ) as ChargerSpotSource_Enum;
          result.source_ = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'directions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.directions.replace(valueDes);
          break;
        case r'marker_label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChargerSpotMarkerLabelEnum),
          ) as ChargerSpotMarkerLabelEnum;
          result.markerLabel = valueDes;
          break;
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChargerSpotImage)]),
          ) as BuiltList<ChargerSpotImage>;
          result.images.replace(valueDes);
          break;
        case r'service_time_note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serviceTimeNote = valueDes;
          break;
        case r'now_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChargerSpotNowAvailableEnum),
          ) as ChargerSpotNowAvailableEnum;
          result.nowAvailable = valueDes;
          break;
        case r'grouped_total_unit_prices_this_month_next_month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GroupedTotalUnitPricesThisMonthNextMonth)]),
          ) as BuiltList<GroupedTotalUnitPricesThisMonthNextMonth>;
          result.groupedTotalUnitPricesThisMonthNextMonth.replace(valueDes);
          break;
        case r'grouped_total_unit_prices_this_month_next_month_by_user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GroupedTotalUnitPricesThisMonthNextMonthByUser)]),
          ) as BuiltList<GroupedTotalUnitPricesThisMonthNextMonthByUser>;
          result.groupedTotalUnitPricesThisMonthNextMonthByUser.replace(valueDes);
          break;
        case r'charger_spot_service_times':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChargerSpotServiceTime)]),
          ) as BuiltList<ChargerSpotServiceTime>;
          result.chargerSpotServiceTimes.replace(valueDes);
          break;
        case r'charger_devices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChargerDevice)]),
          ) as BuiltList<ChargerDevice>;
          result.chargerDevices.replace(valueDes);
          break;
        case r'gogoev_charger_devices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GogoevChargerDevice)]),
          ) as BuiltList<GogoevChargerDevice>;
          result.gogoevChargerDevices.replace(valueDes);
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'facility_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.facilityType = valueDes;
          break;
        case r'phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        case r'parking_fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parkingFee = valueDes;
          break;
        case r'advance_contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.advanceContact = valueDes;
          break;
        case r'gogoev_notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.gogoevNotes.replace(valueDes);
          break;
        case r'maintenance_note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.maintenanceNote.replace(valueDes);
          break;
        case r'maintenance_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChargerSpotMaintenanceStatusEnum),
          ) as ChargerSpotMaintenanceStatusEnum;
          result.maintenanceStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChargerSpot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChargerSpotBuilder();
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

class ChargerSpotSource_Enum extends EnumClass {

  /// 充電スポット情報のソース
  @BuiltValueEnumConst(wireName: r'enechange')
  static const ChargerSpotSource_Enum enechange = _$chargerSpotSourceEnum_enechange;
  /// 充電スポット情報のソース
  @BuiltValueEnumConst(wireName: r'gogoev')
  static const ChargerSpotSource_Enum gogoev = _$chargerSpotSourceEnum_gogoev;

  static Serializer<ChargerSpotSource_Enum> get serializer => _$chargerSpotSourceEnumSerializer;

  const ChargerSpotSource_Enum._(String name): super(name);

  static BuiltSet<ChargerSpotSource_Enum> get values => _$chargerSpotSourceEnumValues;
  static ChargerSpotSource_Enum valueOf(String name) => _$chargerSpotSourceEnumValueOf(name);
}

class ChargerSpotMarkerLabelEnum extends EnumClass {

  /// マップのマーカーのラベル。
  @BuiltValueEnumConst(wireName: r'enechange')
  static const ChargerSpotMarkerLabelEnum enechange = _$chargerSpotMarkerLabelEnum_enechange;
  /// マップのマーカーのラベル。
  @BuiltValueEnumConst(wireName: r'chademo')
  static const ChargerSpotMarkerLabelEnum chademo = _$chargerSpotMarkerLabelEnum_chademo;
  /// マップのマーカーのラベル。
  @BuiltValueEnumConst(wireName: r'tesla')
  static const ChargerSpotMarkerLabelEnum tesla = _$chargerSpotMarkerLabelEnum_tesla;
  /// マップのマーカーのラベル。
  @BuiltValueEnumConst(wireName: r'chademo-tesla')
  static const ChargerSpotMarkerLabelEnum chademoTesla = _$chargerSpotMarkerLabelEnum_chademoTesla;
  /// マップのマーカーのラベル。
  @BuiltValueEnumConst(wireName: r'normal')
  static const ChargerSpotMarkerLabelEnum normal = _$chargerSpotMarkerLabelEnum_normal;

  static Serializer<ChargerSpotMarkerLabelEnum> get serializer => _$chargerSpotMarkerLabelEnumSerializer;

  const ChargerSpotMarkerLabelEnum._(String name): super(name);

  static BuiltSet<ChargerSpotMarkerLabelEnum> get values => _$chargerSpotMarkerLabelEnumValues;
  static ChargerSpotMarkerLabelEnum valueOf(String name) => _$chargerSpotMarkerLabelEnumValueOf(name);
}

class ChargerSpotNowAvailableEnum extends EnumClass {

  /// 現在営業中かどうか（fields指定がない場合は返却される）
  @BuiltValueEnumConst(wireName: r'yes')
  static const ChargerSpotNowAvailableEnum yes = _$chargerSpotNowAvailableEnum_yes;
  /// 現在営業中かどうか（fields指定がない場合は返却される）
  @BuiltValueEnumConst(wireName: r'no')
  static const ChargerSpotNowAvailableEnum no = _$chargerSpotNowAvailableEnum_no;
  /// 現在営業中かどうか（fields指定がない場合は返却される）
  @BuiltValueEnumConst(wireName: r'unknown')
  static const ChargerSpotNowAvailableEnum unknown = _$chargerSpotNowAvailableEnum_unknown;

  static Serializer<ChargerSpotNowAvailableEnum> get serializer => _$chargerSpotNowAvailableEnumSerializer;

  const ChargerSpotNowAvailableEnum._(String name): super(name);

  static BuiltSet<ChargerSpotNowAvailableEnum> get values => _$chargerSpotNowAvailableEnumValues;
  static ChargerSpotNowAvailableEnum valueOf(String name) => _$chargerSpotNowAvailableEnumValueOf(name);
}

class ChargerSpotMaintenanceStatusEnum extends EnumClass {

  /// メンテナンス状態
  @BuiltValueEnumConst(wireName: r'normal')
  static const ChargerSpotMaintenanceStatusEnum normal = _$chargerSpotMaintenanceStatusEnum_normal;
  /// メンテナンス状態
  @BuiltValueEnumConst(wireName: r'notice')
  static const ChargerSpotMaintenanceStatusEnum notice = _$chargerSpotMaintenanceStatusEnum_notice;
  /// メンテナンス状態
  @BuiltValueEnumConst(wireName: r'out_of_order')
  static const ChargerSpotMaintenanceStatusEnum outOfOrder = _$chargerSpotMaintenanceStatusEnum_outOfOrder;
  /// メンテナンス状態
  @BuiltValueEnumConst(wireName: r'on_break')
  static const ChargerSpotMaintenanceStatusEnum onBreak = _$chargerSpotMaintenanceStatusEnum_onBreak;

  static Serializer<ChargerSpotMaintenanceStatusEnum> get serializer => _$chargerSpotMaintenanceStatusEnumSerializer;

  const ChargerSpotMaintenanceStatusEnum._(String name): super(name);

  static BuiltSet<ChargerSpotMaintenanceStatusEnum> get values => _$chargerSpotMaintenanceStatusEnumValues;
  static ChargerSpotMaintenanceStatusEnum valueOf(String name) => _$chargerSpotMaintenanceStatusEnumValueOf(name);
}

