import 'package:freezed_annotation/freezed_annotation.dart';

part 'latlng.freezed.dart';

@freezed
class LatLng with _$LatLng {
  const factory LatLng(
    double latitude,
    double longitude,
  ) = _LatLng;

  @override
  String toString() => 'LatLng(latitude: $latitude, longitude: $longitude)';
}
