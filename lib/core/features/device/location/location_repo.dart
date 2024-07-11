import 'package:fl_location/fl_location.dart';
import 'package:shohdotdev_template/core/features/device/location/models/latlng.dart';
import 'package:shohdotdev_template/core/models/models.dart';

abstract class LocationServiceRepo {
  FutureResult<bool> isLocationServiceEnabled();

  FutureResult<LatLng> getLocationData();

  FutureResult<LocationPermission> requestLocationPermission();

  FutureResult<bool> isLocationPermissionGranted();

  FutureResult<LocationPermission> allowedPermissions();
}
