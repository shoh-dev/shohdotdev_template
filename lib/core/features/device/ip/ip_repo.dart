import 'package:shohdotdev_template/core/models/result/result.dart';

abstract class IpServiceRepo {
  TaskResult<String> getIPAddress();
}
