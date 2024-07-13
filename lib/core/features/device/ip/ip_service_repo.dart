import 'package:shohdotdev_template/core/models/alias/task_result.dart';

abstract class IpServiceRepo {
  TaskResult<String> getIpAddress();
}
