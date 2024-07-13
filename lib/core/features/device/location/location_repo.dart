import 'package:fl_location/fl_location.dart';
import 'package:shohdotdev_template/core/features/device/location/models/latlng.dart';
import 'package:shohdotdev_template/core/models/models.dart';

abstract class LocationServiceRepo {
  TaskResult<bool> isLocationServiceEnabled();

  TaskResult<bool> isLocationPermissionGranted();

  TaskResult<bool> canUseLocation();

  TaskResult<LocationPermission> requestLocationPermission();

  TaskResult<LocationPermission> allowedPermissions();

  TaskResult<LatLng> getLocationData();
}
