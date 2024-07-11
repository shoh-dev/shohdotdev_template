import 'package:fl_location/fl_location.dart';
import 'package:shohdotdev_template/core/features/device/location/location_repo.dart';
import 'package:shohdotdev_template/core/features/device/location/models/latlng.dart';
import 'package:shohdotdev_template/core/models/models.dart';

export 'models/latlng.dart';

class LocationService implements LocationServiceRepo {
  @override
  TaskResult<bool> isLocationServiceEnabled() {
    return TaskEither.tryCatch(
      () async {
        return Data(await FlLocation.isLocationServicesEnabled);
      },
      (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      },
    );
  }

  @override
  TaskResult<LatLng> getLocationData() {
    return TaskEither.tryCatch(
      () async {
        final data = await FlLocation.getLocation();

        return Data(LatLng(data.latitude, data.longitude));
      },
      (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      },
    );
  }

  @override
  TaskResult<LocationPermission> allowedPermissions() {
    return TaskEither.tryCatch(
      () async {
        final permission = await FlLocation.checkLocationPermission();
        return Data(permission);
      },
      (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      },
    );
  }

  @override
  TaskResult<bool> isLocationPermissionGranted() {
    return TaskEither.tryCatch(
      () async {
        final permission = await FlLocation.checkLocationPermission();
        return Data(
          permission == LocationPermission.always ||
              permission == LocationPermission.whileInUse,
        );
      },
      (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      },
    );
  }

  @override
  TaskResult<LocationPermission> requestLocationPermission() {
    return TaskEither.tryCatch(
      () async {
        final permission = await FlLocation.requestLocationPermission();
        return Data(permission);
      },
      (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      },
    );
  }

  @override
  TaskResult<bool> canUseLocation() {
    final permissionResult = isLocationPermissionGranted();
    final isServiceEnabled = isLocationServiceEnabled();

    return isServiceEnabled.call(permissionResult);
  }
}
