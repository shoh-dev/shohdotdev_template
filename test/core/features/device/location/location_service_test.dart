import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shohdotdev_template/core/features/device/location/location_repo.dart';
import 'package:shohdotdev_template/core/models/models.dart';

import '../../../../dummy_data.dart';
@GenerateNiceMocks([MockSpec<LocationServiceRepo>()])
import 'location_service_test.mocks.dart';

void main() {
  group("Test location service", () {
    late MockLocationServiceRepo locationServiceRepo;
    setUp(() {
      //Provide dummy data for the repo return types
      provideDummy<TaskResult<bool>>(TaskEither.right(const Data(true)));
      provideDummy<TaskResult<bool>>(
          TaskEither.left(DummyData.noInternetFailure));

      locationServiceRepo = MockLocationServiceRepo();
    });

    test("isLocationServiceEnabled must return Data(true)", () async {
      when(locationServiceRepo.isLocationServiceEnabled())
          .thenAnswer((realInvocation) {
        return TaskEither.right(const Data(true));
      });
      final result = await locationServiceRepo.isLocationServiceEnabled().run();
      result.fold(
        (_) {},
        (data) {
          expect(data, equals(const Data(true)));
        },
      );
    });

    test("isLocationServiceEnabled must return no internet connection",
        () async {
      when(locationServiceRepo.isLocationServiceEnabled())
          .thenAnswer((realInvocation) {
        return TaskEither.left(DummyData.noInternetFailure);
      });

      final result = await locationServiceRepo.isLocationServiceEnabled().run();

      result.fold(
        (failure) {
          expect(failure, equals(DummyData.noInternetFailure));
        },
        (_) {},
      );
    });
  });
}
