import '../../../../dummy_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/features/device/ip/ip_service_repo.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:mocktail/mocktail.dart';

class MockIpServiceRepo extends Mock implements IpServiceRepo {}

void main() {
  late MockIpServiceRepo ipService;
  setUpAll(() {
    ipService = MockIpServiceRepo();
  });

  group("check 'IP' functions", () {
    test("must get ip address 192.168.1.2", () async {
      when(ipService.getIpAddress).thenAnswer((realInvocation) {
        return TaskResult.right(const ResultData(DummyData.ip));
      });

      final ip = ipService.getIpAddress();

      final result = await ip.run();

      result.fold(
        (_) {},
        (data) {
          expect(data, equals(const ResultData(DummyData.ip)));
        },
      );
    });

    test("must get failure of device no internet", () async {
      when(ipService.getIpAddress).thenAnswer((realInvocation) {
        return TaskResult.left(
            const ResultFailure(DummyData.noInternetFailure));
      });

      final ip = ipService.getIpAddress();

      final result = await ip.run();

      result.fold(
        (failure) {
          expect(failure.message, equals(DummyData.noInternetFailure));
        },
        (_) {},
      );
    });
  });
}
