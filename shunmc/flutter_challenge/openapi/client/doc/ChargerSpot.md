# openapi.model.ChargerSpot

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | 充電スポットを一意に識別するためのuuid | 
**name** | **String** | 充電スポットの名称 | 
**latitude** | **num** | 充電スポットの緯度 | 
**longitude** | **num** | 充電スポットの経度 | 
**source_** | **String** | 充電スポット情報のソース | 
**note** | **String** | 備考 | [optional] 
**directions** | **BuiltList&lt;String&gt;** | 道順（fields指定がない場合は返却される） | [optional] 
**markerLabel** | **String** | マップのマーカーのラベル。 | [optional] 
**images** | [**BuiltList&lt;ChargerSpotImage&gt;**](ChargerSpotImage.md) | 充電スポットの写真URL（fields指定がない場合は返却される） | [optional] 
**serviceTimeNote** | **String** |  | [optional] 
**nowAvailable** | **String** | 現在営業中かどうか（fields指定がない場合は返却される） | [optional] 
**groupedTotalUnitPricesThisMonthNextMonth** | [**BuiltList&lt;GroupedTotalUnitPricesThisMonthNextMonth&gt;**](GroupedTotalUnitPricesThisMonthNextMonth.md) | 同じ充電出力、単価でグルーピングされた単価。 | [optional] 
**groupedTotalUnitPricesThisMonthNextMonthByUser** | [**BuiltList&lt;GroupedTotalUnitPricesThisMonthNextMonthByUser&gt;**](GroupedTotalUnitPricesThisMonthNextMonthByUser.md) | プロモコードを登録したユーザーに応じて、同じ充電出力、単価でグルーピングされた単価（プロモコードを登録すると充電単価が変わるケースがある）。 | [optional] 
**chargerSpotServiceTimes** | [**BuiltList&lt;ChargerSpotServiceTime&gt;**](ChargerSpotServiceTime.md) | サービス提供時間（データが存在しない場合は空配列、fields指定がない場合は返却される） | [optional] 
**chargerDevices** | [**BuiltList&lt;ChargerDevice&gt;**](ChargerDevice.md) | 充電器情報 | [optional] 
**gogoevChargerDevices** | [**BuiltList&lt;GogoevChargerDevice&gt;**](GogoevChargerDevice.md) | Gogoevの充電器情報（Gogoevの充電器のみ、fields指定がない場合は返却される） | [optional] 
**address** | **String** | 住所（Gogoevの充電器のみ） | [optional] 
**facilityType** | **String** | 施設種別（Gogoevの充電器のみ） | [optional] 
**phoneNumber** | **String** | 電話番号（Gogoevの充電器のみ） | [optional] 
**parkingFee** | **String** | 駐車料金 | [optional] 
**advanceContact** | **String** | 事前連絡（Gogoevの充電器のみ） | [optional] 
**gogoevNotes** | **BuiltList&lt;String&gt;** | 備考（Gogoevの充電器のみ） | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


