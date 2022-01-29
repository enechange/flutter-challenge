class ChargerSpotRepository {
  List<ChargerSpots>? chargerSpots;

  ChargerSpotRepository({this.chargerSpots});

  ChargerSpotRepository.fromJson(Map<String, dynamic> json) {
    if (json['charger_spots'] != null) {
      chargerSpots = <ChargerSpots>[];
      json['charger_spots'].forEach((v) {
        chargerSpots!.add(ChargerSpots.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (chargerSpots != null) {
      data['charger_spots'] = chargerSpots!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChargerSpots {
  String? name;
  double? latitude;
  double? longitude;
  String? serviceTimeNote;
  List<ChargerSpotServiceTimes>? chargerSpotServiceTimes;
  List<ChargerDevices>? chargerDevices;

  ChargerSpots(
      {this.name,
      this.latitude,
      this.longitude,
      this.serviceTimeNote,
      this.chargerSpotServiceTimes,
      this.chargerDevices});

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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['service_time_note'] = serviceTimeNote;
    if (chargerSpotServiceTimes != null) {
      data['charger_spot_service_times'] =
          chargerSpotServiceTimes!.map((v) => v.toJson()).toList();
    }
    if (chargerDevices != null) {
      data['charger_devices'] = chargerDevices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChargerSpotServiceTimes {
  String? startTime;
  String? endTime;
  String? businessDay;
  String? day;

  ChargerSpotServiceTimes(
      {this.startTime, this.endTime, this.businessDay, this.day});

  ChargerSpotServiceTimes.fromJson(Map<String, dynamic> json) {
    startTime = json['start_time'];
    endTime = json['end_time'];
    businessDay = json['business_day'];
    day = json['day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['business_day'] = businessDay;
    data['day'] = day;
    return data;
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

  ChargerDevices(
      {this.name,
      this.makerCode,
      this.productCode,
      this.serialNumber,
      this.serviceStartTime,
      this.serviceEndTime,
      this.allowCurrent,
      this.maxChargeTime,
      this.latitude,
      this.longitude,
      this.displayStatus,
      this.power});

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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['maker_code'] = makerCode;
    data['product_code'] = productCode;
    data['serial_number'] = serialNumber;
    data['service_start_time'] = serviceStartTime;
    data['service_end_time'] = serviceEndTime;
    data['allow_current'] = allowCurrent;
    data['max_charge_time'] = maxChargeTime;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['display_status'] = displayStatus;
    data['power'] = power;
    return data;
  }
}
