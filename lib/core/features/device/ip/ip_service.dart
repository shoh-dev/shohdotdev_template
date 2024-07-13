import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/features/device/ip/ip_service_repo.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/utils/utils.dart';

class IpService implements IpServiceRepo {
  final RestApiClient restApiClient;

  const IpService(this.restApiClient);

  @override
  TaskResult<String> getIpAddress() {
    return TaskEither.tryCatch(
      () async {
        final dio = restApiClient.dio;

        dio.options.baseUrl = "https://api.ipify.org";

        final response = await dio.get(
          '/',
          queryParameters: {"format": "json"},
        );

        if (response.statusCode == 200 &&
            response.data['ip'].toString().isValid()) {
          final res = ResultData(response.data['ip'].toString());
          return res;
        }

        throw const Result.failure("Failed to get IP address");
      },
      const HandleException<String>().exception,
    );
  }
}
