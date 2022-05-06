import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Locations {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    latitude = position.latitude;
    longitude = position.longitude;
  }
}
