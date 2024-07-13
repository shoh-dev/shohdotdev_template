import 'package:fl_location/fl_location.dart';
import 'package:shohdotdev_template/core/features/device/location/location_service_repo.dart';
import 'package:shohdotdev_template/core/features/device/location/models/latlng.dart';
import 'package:shohdotdev_template/core/models/models.dart';

export 'models/latlng.dart';

class LocationService implements LocationServiceRepo {
  @override
  TaskResult<bool> isLocationServiceEnabled() {
    return TaskEither.tryCatch(
      () async {
        return ResultData(await FlLocation.isLocationServicesEnabled);
      },
      const HandleException<bool>().exception,
    );
  }

  @override
  TaskResult<bool> isLocationPermissionGranted() {
    return TaskEither.tryCatch(
      () async {
        final permission = await FlLocation.checkLocationPermission();
        return ResultData(
          permission == LocationPermission.always ||
              permission == LocationPermission.whileInUse,
        );
      },
      const HandleException<bool>().exception,
    );
  }

  @override
  TaskResult<bool> canUseLocation() {
    final permissionResult = isLocationPermissionGranted();
    final isServiceEnabled = isLocationServiceEnabled();

    return isServiceEnabled.call(permissionResult);
  }

  @override
  TaskResult<LocationPermission> requestLocationPermission() {
    return TaskEither.tryCatch(
      () async {
        //first checking if any allowed permissions
        //if so return those
        //otherwise request permission
        final allowedP = await allowedPermissions().run();
        return allowedP.fold((e) async {
          final permission = await FlLocation.requestLocationPermission();
          return ResultData(permission);
        }, (data) {
          throw Exception('Permission already granted');
        });
      },
      const HandleException<LocationPermission>().exception,
    );
  }

  @override
  TaskResult<LocationPermission> allowedPermissions() {
    return TaskEither.tryCatch(
      () async {
        final permission = await FlLocation.checkLocationPermission();
        return ResultData(permission);
      },
      const HandleException<LocationPermission>().exception,
    );
  }

  @override
  TaskResult<LatLng> getLocationData() {
    return TaskEither.tryCatch(
      () async {
        final data = await FlLocation.getLocation();

        return ResultData(LatLng(data.latitude, data.longitude));
      },
      const HandleException<LatLng>().exception,
    );
  }

  @override
  EitherResult<Stream<LatLng>> getLocationStream() {
    return EitherResult.tryCatch(
      () {
        return ResultData(
            FlLocation.getLocationStream().map(LatLng.fromFlLocation));
      },
      const HandleException<Stream<LatLng>>().exception,
    );
  }
}
