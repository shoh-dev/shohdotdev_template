import 'package:shohdotdev_template/core/models/models.dart';

export 'package:fpdart/fpdart.dart';

typedef EitherResult<T> = Either<Failure, Data<T>>;
typedef TaskResult<T> = TaskEither<Failure, Data<T>>;
