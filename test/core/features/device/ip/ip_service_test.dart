import '../../../../dummy_data.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shohdotdev_template/core/features/device/ip/ip_service_repo.dart';
import 'package:shohdotdev_template/core/models/models.dart';

@GenerateNiceMocks([MockSpec<IpServiceRepo>()])
import 'ip_service_test.mocks.dart';

void main() {
  late MockIpServiceRepo ipService;
  setUpAll(() {
    provideDummy<TaskResult<String>>(
        TaskEither.right(const Data(DummyData.ip)));

    provideDummy<TaskResult<String>>(
        TaskEither.left(const Failure("No internet connection")));

    ipService = MockIpServiceRepo();
  });

  group("check 'IP' functions", () {
    test("must get ip address 192.168.1.2", () async {
      when(ipService.getIpAddress()).thenAnswer((realInvocation) {
        return TaskEither.right(const Data(DummyData.ip));
      });

      final ip = ipService.getIpAddress();

      final result = await ip.run();

      result.fold(
        (_) {},
        (data) {
          expect(data, equals(const Data(DummyData.ip)));
        },
      );
    });

    test("must get failure of device no internet", () async {
      when(ipService.getIpAddress()).thenAnswer((realInvocation) {
        return TaskEither.left(DummyData.noInternetFailure);
      });

      final ip = ipService.getIpAddress();

      final result = await ip.run();

      result.fold(
        (failure) {
          expect(failure, equals(DummyData.noInternetFailure));
        },
        (_) {},
      );
    });
  });
}
