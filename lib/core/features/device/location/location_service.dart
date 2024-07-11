import 'package:fl_location/fl_location.dart';
import 'package:shohdotdev_template/core/features/device/location/location_repo.dart';
import 'package:shohdotdev_template/core/features/device/location/models/latlng.dart';
import 'package:shohdotdev_template/core/models/models.dart';

export 'models/latlng.dart';

class LocationService implements LocationServiceRepo {
  @override
  FutureResult<bool> isLocationServiceEnabled() async {
    try {
      return Right(Data(await FlLocation.isLocationServicesEnabled));
    } catch (e, st) {
      return Left(Failure.exception(e, st));
    }
  }

  @override
  FutureResult<LatLng> getLocationData() async {
    try {
      final data = await FlLocation.getLocation();

      return Right(Data(LatLng(data.latitude, data.longitude)));
    } catch (e, st) {
      return Left(Failure.exception(e, st));
    }
  }

  @override
  FutureResult<LocationPermission> allowedPermissions() async {
    try {
      final permission = await FlLocation.checkLocationPermission();
      return Right(Data(permission));
    } catch (e, st) {
      return Left(Failure.exception(e, st));
    }
  }

  @override
  FutureResult<bool> isLocationPermissionGranted() async {
    try {
      final permissionResult = await allowedPermissions();

      return permissionResult.fold(
        (failure) => Left(failure),
        (data) => Right(Data(
          data.data == LocationPermission.always ||
              data.data == LocationPermission.whileInUse,
        )),
      );
    } catch (e, st) {
      return Left(Failure.exception(e, st));
    }
  }

  @override
  FutureResult<LocationPermission> requestLocationPermission() async {
    try {
      final permission = await FlLocation.requestLocationPermission();

      return Right(Data(permission));
    } catch (e, st) {
      return Left(Failure.exception(e, st));
    }
  }
}
