import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shohdotdev_template/core/features/device/location/location_service_repo.dart';
import 'package:shohdotdev_template/core/models/models.dart';

import '../../../../dummy_data.dart';

class MockLocationServiceRepo extends Mock implements LocationServiceRepo {}

void main() {
  group("Test location service", () {
    late MockLocationServiceRepo locationServiceRepo;
    setUp(() {
      locationServiceRepo = MockLocationServiceRepo();
    });

    test("isLocationServiceEnabled must return ResultData(true)", () async {
      when(locationServiceRepo.isLocationServiceEnabled)
          .thenAnswer((realInvocation) {
        return TaskEither.right(const ResultData(true));
      });
      final result = await locationServiceRepo.isLocationServiceEnabled().run();
      result.fold(
        (_) {},
        (data) {
          expect(data, equals(const ResultData(true)));
        },
      );
    });

    test("isLocationServiceEnabled must return no internet connection",
        () async {
      when(locationServiceRepo.isLocationServiceEnabled)
          .thenAnswer((realInvocation) {
        return TaskEither.left(
            const ResultFailure(DummyData.noInternetFailure));
      });

      final result = await locationServiceRepo.isLocationServiceEnabled().run();

      result.fold(
        (failure) {
          expect(failure.message, equals(DummyData.noInternetFailure));
        },
        (_) {},
      );
    });
  });
}
