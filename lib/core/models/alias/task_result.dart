import 'package:fpdart/fpdart.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';

typedef TaskResult<T> = TaskEither<ResultFailure<T>, ResultData<T>>;
