//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/api_charger_device.dart';
import 'package:openapi/src/model/api_charger_spot.dart';
import 'package:openapi/src/model/api_charger_spot_image.dart';
import 'package:openapi/src/model/api_charger_spot_service_time.dart';
import 'package:openapi/src/model/api_gogoev_charger_device.dart';
import 'package:openapi/src/model/api_grouped_total_unit_prices_this_month_next_month.dart';
import 'package:openapi/src/model/api_grouped_total_unit_prices_this_month_next_month_by_user.dart';
import 'package:openapi/src/model/api_month_price.dart';
import 'package:openapi/src/model/api_price.dart';
import 'package:openapi/src/model/api_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  APIChargerDevice,
  APIChargerSpot,
  APIChargerSpotImage,
  APIChargerSpotServiceTime,
  APIGogoevChargerDevice,
  APIGroupedTotalUnitPricesThisMonthNextMonth,
  APIGroupedTotalUnitPricesThisMonthNextMonthByUser,
  APIMonthPrice,
  APIPrice,
  APIResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
