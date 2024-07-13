import 'package:fpdart/fpdart.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';

typedef EitherResult<T> = Either<ResultFailure<T>, ResultData<T>>;
