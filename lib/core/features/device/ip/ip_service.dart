import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/features/device/ip/ip_service_repo.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/utils/utils.dart';

class IpService implements IpServiceRepo {
  final RestApiClient restApiClient;

  const IpService(this.restApiClient);

  @override
  TaskResult<String> getIPAddress() {
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
          return response.data['ip'];
        }

        throw const Failure("Failed to get IP address");
      },
      (error, stackTrace) {
        return Failure.exception(error, stackTrace);
      },
    );
  }
}
