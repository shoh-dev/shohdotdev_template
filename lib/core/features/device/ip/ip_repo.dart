import 'package:shohdotdev_template/core/models/result/result.dart';

abstract class IpRepository {
  TaskResult<String> getIPAddress();
}
