import 'package:geolocator/geolocator.dart';
import 'dart:async';

class Location {
  double latitude;
  double longitude;

  Location({this.latitude, this.longitude});

  Future<void> getCurrentLocation() async {
    Position position;
    try {
      position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
      position ?? new Position(latitude: 0.0, longitude: 0.0);
    }
  }
}
