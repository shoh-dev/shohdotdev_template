import 'package:fl_location/fl_location.dart' as fl;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'latlng.freezed.dart';

@freezed
class LatLng with _$LatLng {
  const factory LatLng(
    double latitude,
    double longitude,
  ) = _LatLng;

  factory LatLng.fromFlLocation(fl.Location location) {
    return LatLng(location.latitude, location.longitude);
  }
}
