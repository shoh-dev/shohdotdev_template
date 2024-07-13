// Mocks generated by Mockito 5.4.4 from annotations
// in shohdotdev_template/test/core/features/device/location/location_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:fl_location/fl_location.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i4;
import 'package:shohdotdev_template/core/features/device/location/location_service_repo.dart'
    as _i2;
import 'package:shohdotdev_template/core/features/device/location/models/latlng.dart'
    as _i6;
import 'package:shohdotdev_template/core/models/models.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [LocationServiceRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationServiceRepo extends _i1.Mock
    implements _i2.LocationServiceRepo {
  @override
  _i3.TaskEither<_i3.Failure, _i3.Data<bool>> isLocationServiceEnabled() =>
      (super.noSuchMethod(
        Invocation.method(
          #isLocationServiceEnabled,
          [],
        ),
        returnValue:
            _i4.dummyValue<_i3.TaskEither<_i3.Failure, _i3.Data<bool>>>(
          this,
          Invocation.method(
            #isLocationServiceEnabled,
            [],
          ),
        ),
        returnValueForMissingStub:
            _i4.dummyValue<_i3.TaskEither<_i3.Failure, _i3.Data<bool>>>(
          this,
          Invocation.method(
            #isLocationServiceEnabled,
            [],
          ),
        ),
      ) as _i3.TaskEither<_i3.Failure, _i3.Data<bool>>);

  @override
  _i3.TaskEither<_i3.Failure, _i3.Data<bool>> isLocationPermissionGranted() =>
      (super.noSuchMethod(
        Invocation.method(
          #isLocationPermissionGranted,
          [],
        ),
        returnValue:
            _i4.dummyValue<_i3.TaskEither<_i3.Failure, _i3.Data<bool>>>(
          this,
          Invocation.method(
            #isLocationPermissionGranted,
            [],
          ),
        ),
        returnValueForMissingStub:
            _i4.dummyValue<_i3.TaskEither<_i3.Failure, _i3.Data<bool>>>(
          this,
          Invocation.method(
            #isLocationPermissionGranted,
            [],
          ),
        ),
      ) as _i3.TaskEither<_i3.Failure, _i3.Data<bool>>);

  @override
  _i3.TaskEither<_i3.Failure, _i3.Data<bool>> canUseLocation() =>
      (super.noSuchMethod(
        Invocation.method(
          #canUseLocation,
          [],
        ),
        returnValue:
            _i4.dummyValue<_i3.TaskEither<_i3.Failure, _i3.Data<bool>>>(
          this,
          Invocation.method(
            #canUseLocation,
            [],
          ),
        ),
        returnValueForMissingStub:
            _i4.dummyValue<_i3.TaskEither<_i3.Failure, _i3.Data<bool>>>(
          this,
          Invocation.method(
            #canUseLocation,
            [],
          ),
        ),
      ) as _i3.TaskEither<_i3.Failure, _i3.Data<bool>>);

  @override
  _i3.TaskEither<_i3.Failure, _i3.Data<_i5.LocationPermission>>
      requestLocationPermission() => (super.noSuchMethod(
            Invocation.method(
              #requestLocationPermission,
              [],
            ),
            returnValue: _i4.dummyValue<
                _i3.TaskEither<_i3.Failure, _i3.Data<_i5.LocationPermission>>>(
              this,
              Invocation.method(
                #requestLocationPermission,
                [],
              ),
            ),
            returnValueForMissingStub: _i4.dummyValue<
                _i3.TaskEither<_i3.Failure, _i3.Data<_i5.LocationPermission>>>(
              this,
              Invocation.method(
                #requestLocationPermission,
                [],
              ),
            ),
          ) as _i3.TaskEither<_i3.Failure, _i3.Data<_i5.LocationPermission>>);

  @override
  _i3.TaskEither<_i3.Failure, _i3.Data<_i5.LocationPermission>>
      allowedPermissions() => (super.noSuchMethod(
            Invocation.method(
              #allowedPermissions,
              [],
            ),
            returnValue: _i4.dummyValue<
                _i3.TaskEither<_i3.Failure, _i3.Data<_i5.LocationPermission>>>(
              this,
              Invocation.method(
                #allowedPermissions,
                [],
              ),
            ),
            returnValueForMissingStub: _i4.dummyValue<
                _i3.TaskEither<_i3.Failure, _i3.Data<_i5.LocationPermission>>>(
              this,
              Invocation.method(
                #allowedPermissions,
                [],
              ),
            ),
          ) as _i3.TaskEither<_i3.Failure, _i3.Data<_i5.LocationPermission>>);

  @override
  _i3.TaskEither<_i3.Failure, _i3.Data<_i6.LatLng>> getLocationData() =>
      (super.noSuchMethod(
        Invocation.method(
          #getLocationData,
          [],
        ),
        returnValue:
            _i4.dummyValue<_i3.TaskEither<_i3.Failure, _i3.Data<_i6.LatLng>>>(
          this,
          Invocation.method(
            #getLocationData,
            [],
          ),
        ),
        returnValueForMissingStub:
            _i4.dummyValue<_i3.TaskEither<_i3.Failure, _i3.Data<_i6.LatLng>>>(
          this,
          Invocation.method(
            #getLocationData,
            [],
          ),
        ),
      ) as _i3.TaskEither<_i3.Failure, _i3.Data<_i6.LatLng>>);

  @override
  _i3.Either<_i3.Failure, _i3.Data<_i7.Stream<_i6.LatLng>>>
      getLocationStream() => (super.noSuchMethod(
            Invocation.method(
              #getLocationStream,
              [],
            ),
            returnValue: _i4.dummyValue<
                _i3.Either<_i3.Failure, _i3.Data<_i7.Stream<_i6.LatLng>>>>(
              this,
              Invocation.method(
                #getLocationStream,
                [],
              ),
            ),
            returnValueForMissingStub: _i4.dummyValue<
                _i3.Either<_i3.Failure, _i3.Data<_i7.Stream<_i6.LatLng>>>>(
              this,
              Invocation.method(
                #getLocationStream,
                [],
              ),
            ),
          ) as _i3.Either<_i3.Failure, _i3.Data<_i7.Stream<_i6.LatLng>>>);
}
