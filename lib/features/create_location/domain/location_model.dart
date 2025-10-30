class LocationModel {
  final String locationId;
  final String locationName;
  final String locationUrl;
  final String country;
  final String stateOrProvince;
  final String city;
  final String postalCode;
  final bool allowGeofence;
  final bool allowBreaks;
  final bool allowPause;

  const LocationModel({
    required this.locationId,
    required this.locationName,
    required this.locationUrl,
    required this.country,
    required this.stateOrProvince,
    required this.city,
    required this.postalCode,
    required this.allowGeofence,
    required this.allowBreaks,
    required this.allowPause,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      locationId: json['locationId'] ?? '',
      locationName: json['locationName'] ?? '',
      locationUrl: json['locationUrl'] ?? '',
      country: json['country'] ?? '',
      stateOrProvince: json['stateOrProvince'] ?? '',
      city: json['city'] ?? '',
      postalCode: json['postalCode'] ?? '',
      allowGeofence: json['allowGeofence'] ?? false,
      allowBreaks: json['allowBreaks'] ?? false,
      allowPause: json['allowPause'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'locationId': locationId,
      'locationName': locationName,
      'locationUrl': locationUrl,
      'country': country,
      'stateOrProvince': stateOrProvince,
      'city': city,
      'postalCode': postalCode,
      'allowGeofence': allowGeofence,
      'allowBreaks': allowBreaks,
      'allowPause': allowPause,
    };
  }

  LocationModel copyWith({
    String? locationId,
    String? locationName,
    String? locationUrl,
    String? country,
    String? stateOrProvince,
    String? city,
    String? postalCode,
    bool? allowGeofence,
    bool? allowBreaks,
    bool? allowPause,
  }) {
    return LocationModel(
      locationId: locationId ?? this.locationId,
      locationName: locationName ?? this.locationName,
      locationUrl: locationUrl ?? this.locationUrl,
      country: country ?? this.country,
      stateOrProvince: stateOrProvince ?? this.stateOrProvince,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      allowGeofence: allowGeofence ?? this.allowGeofence,
      allowBreaks: allowBreaks ?? this.allowBreaks,
      allowPause: allowPause ?? this.allowPause,
    );
  }
}
