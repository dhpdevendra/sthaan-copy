import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'locations.g.dart';

@JsonSerializable()
class LatLng {
  LatLng({
    required this.lat,
    required this.lng,
  });

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
  Map<String, dynamic> toJson() => _$LatLngToJson(this);

  final double lat;
  final double lng;
}

@JsonSerializable()
class Region {
  Region({
    required this.coords,
    required this.id,
    required this.name,
    required this.zoom,
  });

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
  Map<String, dynamic> toJson() => _$RegionToJson(this);

  final LatLng coords;
  final String id;
  final String name;
  final double zoom;
}

@JsonSerializable()
class Office {
  Office({
    //required this.address,
    required this.id,
    required this.district,
    required this.mDistrict,
    required this.name,
    required this.mLocation,
    required this.lat,
    required this.lng,
    required this.image,
    required this.mShortDescription,
    required this.mLongDescription,
    //required this.phone,
  });

  factory Office.fromJson(Map<String, dynamic> json) => _$OfficeFromJson(json);
  Map<String, dynamic> toJson() => _$OfficeToJson(this);

  //final String address;
  final String id;
  final String district;
  final String mDistrict;
  final String name;
  final String mLocation;
  final double lat;
  final double lng;
  final String mShortDescription;
  final String mLongDescription;
  final String image;

  //final String phone;
}

@JsonSerializable()
class Locations {
  Locations({
    required this.sthaan,
    required this.districts,
  });

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
  Map<String, dynamic> toJson() => _$LocationsToJson(this);

  final List<Office> sthaan;
  final List<Region> districts;
}

Future<Locations> getGoogleOffices() async {
  const googleLocationsURL =
      //'http://sarvadnyadental.com/static/data/locations.json';
      "";

  // Retrieve the locations of Mahanubhav Sthaan
  try {
    final response = await http.get(Uri.parse(googleLocationsURL));
    if (response.statusCode == 200) {
      return Locations.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    }
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }

  // Fallback for when the above HTTP request fails.
  return Locations.fromJson(
    json.decode(
      await rootBundle.loadString('assets/locations.json'),
    ) as Map<String, dynamic>,
  );
}
