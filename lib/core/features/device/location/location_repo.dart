import 'package:fl_location/fl_location.dart';
import 'package:shohdotdev_template/core/features/device/location/models/latlng.dart';
import 'package:shohdotdev_template/core/models/models.dart';

abstract class LocationServiceRepo {
  TaskResult<bool> isLocationServiceEnabled();

  TaskResult<LatLng> getLocationData();

  TaskResult<LocationPermission> requestLocationPermission();

  TaskResult<bool> isLocationPermissionGranted();

  TaskResult<LocationPermission> allowedPermissions();

  //can use location
  TaskResult<bool> canUseLocation();
}
