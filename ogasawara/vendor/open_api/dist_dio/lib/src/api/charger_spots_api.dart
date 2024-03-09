//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/api_response.dart';

class ChargerSpotsApi {

  final Dio _dio;

  final Serializers _serializers;

  const ChargerSpotsApi(this._dio, this._serializers);

  /// 充電スポットと充電スポットに紐づく充電器を返します。緯度経度（４つ）、uuidまたはtextのいずれかが必須。
  /// 
  ///
  /// Parameters:
  /// * [X_EVENE_NATIVE_API_TOKEN] - 認証トークン
  /// * [userUuid] - ユーザのuuid
  /// * [swLat] - 検索したいエリアの最南西（左下）の緯度
  /// * [swLng] - 検索したいエリアの最南西（左下）の経度
  /// * [neLat] - 検索したいエリアの最北東（右上）の緯度
  /// * [neLng] - 検索したいエリアの最北東（右上）の経度
  /// * [uuid] - 検索したい充電スポットのuuid。カンマ区切りで連結して複数スポットを取得可能
  /// * [text] - 検索したい充電スポットの名称（部分一致で検索）
  /// * [fields] - デフォルトはすべての属性を返却、絞り込みたい場合はfieldsに属性名（note, directions, marker_label, images, service_time_note, now_available, grouped_total_unit_prices_this_month_next_month, grouped_total_unit_prices_this_month_next_month_by_user, charger_spot_service_times, charger_devices, gogoev_charger_devices, address, facility_type, phone_number, parking_fee, advance_contact, gogoev_notes, maintenance_note, maintenance_status）をカンマ区切りで連結
  /// * [deviceTypes] - 充電種別（chademo: CHAdeMO, 100v: 100V, 200v: 200V, tesla: TESLA）カンマ区切りで連結
  /// * [feeTypes] - 充電料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結
  /// * [nowAvailable] - 現在利用可能か（true: 利用可能, true以外：不明、利用不可）
  /// * [styles] - 充電出力（slow: 低速 20kW未満, medium: 中速 20-40kW未満, high: 高速 40-90kW未満, extra_high: 90kW以上, pole_with_cable: ポール型ケーブル付き, pole_outlet: ポール型コンセント, outlet_with_cable: コンセントにケーブル後付け, outlet_only: コンセントのみ, super_charger: スーパーチャージャー, except_super_charger: スーパーチャージャー以外）カンマ区切りで連結
  /// * [gogoevAuthenticationNetworks] - 認証ネットワーク（none: なし, zesp2_zesp3: 日産 ZESP2 / ZESP3, zesp_lite: 日産 ZESP ライト, mitsubishi: 三菱自動車 電動車両サポート, eco_qden: エネゲート エコQ電, jtb_regular: JTB おでかけCard レギュラー, jtb_premiere: JTB おでかけCard プレミア, evss: EVSSネットワーク, toyota_phv_drive_support: トヨタ PHV DriveSupport, toyota_phv_drive_support_plus: トヨタ PHV DriveSupport Plus, toyota_phv_support: トヨタ PHV充電サポート, toyota_g_station: トヨタ G-Station, waon: イオン WAON, times_park_and_charge: タイムズ パーク＆チャージ会員, emp_fast_ordinary: eMP 急速・普通併用, emp_fast: eMP 急速充電器用, emp_ordinary: eMP 普通充電器用, bmw_charge_now_fast_ordinary: BMW ChargeNow 急速・普通併用, bmw_charge_now_ordinary: BMW ChargeNow 普通充電器用, eneos_charge_plus: ENEOS ChargePlus, nanaco: nanaco認証, enechange: ENECHANGE, other: その他）カンマ区切りで連結
  /// * [categories] - 施設種別（mitsubishi: 三菱ディーラー, nissan: 日産ディーラー, toyota: トヨタディーラー, mercedes: メルセデスディーラー, bmw: BMWディーラー, vw: VWディーラー, honda: HONDAディーラー, station_airport: 駅・空港, roadside_station: 道の駅, sa: サービスエリア, public_facility: 公共施設, hotel: 宿泊施設・温浴施設, shopping_mall: ショッピングモール・小売店, convenience_store: コンビニ, leisure_facility: レジャー・スポーツ施設, coin_parking: コインパーキング, car_factory: 自動車工場, restaurant: レストラン, gas_station: ガソリンスタンド, electrical_contractor: 電気工事業者, other: その他）カンマ区切りで連結
  /// * [open24Hours] - 24時間営業か（true: 24時間営業, true以外：24時間営業ではない）
  /// * [advanceContacts] - 事前連絡（necessary: 必要, unnecessary: 不要, unknown: 不明）カンマ区切りで連結
  /// * [parkingFeeTypes] - 駐車料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [APIResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<APIResponse>> chargerSpots({ 
    required String X_EVENE_NATIVE_API_TOKEN,
    String? userUuid,
    String? swLat,
    String? swLng,
    String? neLat,
    String? neLng,
    String? uuid,
    String? text,
    String? fields,
    String? deviceTypes,
    String? feeTypes,
    String? nowAvailable,
    String? styles,
    String? gogoevAuthenticationNetworks,
    String? categories,
    String? open24Hours,
    String? advanceContacts,
    String? parkingFeeTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/charger_spots';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        r'X-EVENE-NATIVE-API-TOKEN': X_EVENE_NATIVE_API_TOKEN,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userUuid != null) r'user_uuid': encodeQueryParameter(_serializers, userUuid, const FullType(String)),
      if (swLat != null) r'sw_lat': encodeQueryParameter(_serializers, swLat, const FullType(String)),
      if (swLng != null) r'sw_lng': encodeQueryParameter(_serializers, swLng, const FullType(String)),
      if (neLat != null) r'ne_lat': encodeQueryParameter(_serializers, neLat, const FullType(String)),
      if (neLng != null) r'ne_lng': encodeQueryParameter(_serializers, neLng, const FullType(String)),
      if (uuid != null) r'uuid': encodeQueryParameter(_serializers, uuid, const FullType(String)),
      if (text != null) r'text': encodeQueryParameter(_serializers, text, const FullType(String)),
      if (fields != null) r'fields': encodeQueryParameter(_serializers, fields, const FullType(String)),
      if (deviceTypes != null) r'device_types': encodeQueryParameter(_serializers, deviceTypes, const FullType(String)),
      if (feeTypes != null) r'fee_types': encodeQueryParameter(_serializers, feeTypes, const FullType(String)),
      if (nowAvailable != null) r'now_available': encodeQueryParameter(_serializers, nowAvailable, const FullType(String)),
      if (styles != null) r'styles': encodeQueryParameter(_serializers, styles, const FullType(String)),
      if (gogoevAuthenticationNetworks != null) r'gogoev_authentication_networks': encodeQueryParameter(_serializers, gogoevAuthenticationNetworks, const FullType(String)),
      if (categories != null) r'categories': encodeQueryParameter(_serializers, categories, const FullType(String)),
      if (open24Hours != null) r'open_24_hours': encodeQueryParameter(_serializers, open24Hours, const FullType(String)),
      if (advanceContacts != null) r'advance_contacts': encodeQueryParameter(_serializers, advanceContacts, const FullType(String)),
      if (parkingFeeTypes != null) r'parking_fee_types': encodeQueryParameter(_serializers, parkingFeeTypes, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    APIResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(APIResponse),
      ) as APIResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<APIResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
