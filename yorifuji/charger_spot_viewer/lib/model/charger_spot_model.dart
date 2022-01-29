class ChargerSpots {
  String? name;
  double? latitude;
  double? longitude;
  String? serviceTimeNote;
  List<ChargerSpotServiceTimes>? chargerSpotServiceTimes;
  List<ChargerDevices>? chargerDevices;

  ChargerSpots.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    serviceTimeNote = json['service_time_note'];
    if (json['charger_spot_service_times'] != null) {
      chargerSpotServiceTimes = <ChargerSpotServiceTimes>[];
      json['charger_spot_service_times'].forEach((v) {
        chargerSpotServiceTimes!.add(ChargerSpotServiceTimes.fromJson(v));
      });
    }
    if (json['charger_devices'] != null) {
      chargerDevices = <ChargerDevices>[];
      json['charger_devices'].forEach((v) {
        chargerDevices!.add(ChargerDevices.fromJson(v));
      });
    }
  }
}

class ChargerSpotServiceTimes {
  String? startTime;
  String? endTime;
  String? businessDay;
  String? day;

  ChargerSpotServiceTimes.fromJson(Map<String, dynamic> json) {
    startTime = json['start_time'];
    endTime = json['end_time'];
    businessDay = json['business_day'];
    day = json['day'];
  }
}

class ChargerDevices {
  String? name;
  String? makerCode;
  String? productCode;
  String? serialNumber;
  Null? serviceStartTime;
  Null? serviceEndTime;
  Null? allowCurrent;
  Null? maxChargeTime;
  double? latitude;
  double? longitude;
  String? displayStatus;
  String? power;

  ChargerDevices.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    makerCode = json['maker_code'];
    productCode = json['product_code'];
    serialNumber = json['serial_number'];
    serviceStartTime = json['service_start_time'];
    serviceEndTime = json['service_end_time'];
    allowCurrent = json['allow_current'];
    maxChargeTime = json['max_charge_time'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    displayStatus = json['display_status'];
    power = json['power'];
  }
}
