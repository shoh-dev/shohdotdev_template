import 'package:shohdotdev_template/core/models/models.dart';

export 'package:fpdart/fpdart.dart';

typedef Result<T> = Either<Failure, Data<T>>;

typedef FutureResult<T> = Future<Result<T>>;
