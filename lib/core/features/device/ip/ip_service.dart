import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/features/device/ip/ip_repo.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/utils/utils.dart';

class IpService implements IpRepository {
  final RestApiClient restApiClient;

  const IpService(this.restApiClient);

  @override
  Future<Result<String>> getIPAddress() async {
    try {
      final dio = restApiClient.dio;

      dio.options.baseUrl = "https://api.ipify.org";

      final response = await dio.get(
        '/',
        queryParameters: {"format": "json"},
      );

      if (response.statusCode == 200 &&
          response.data['ip'].toString().isValid()) {
        return Right(Data(response.data['ip']));
      }

      return const Left(Failure("Failed to get IP address"));
    } catch (e, st) {
      return Left(Failure.exception(e, st));
    }
  }
}
