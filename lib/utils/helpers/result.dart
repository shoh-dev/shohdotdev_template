import 'package:shohdotdev_template/core/models/result/result.dart';

extension ResultHelpers<T> on Result<T> {
  bool get isNone => this is ResultNone<T>;

  bool get isData => this is ResultData<T>;

  bool get isFailure => this is ResultFailure<T>;

  ResultData<T> get asData => this as ResultData<T>;

  ResultFailure<T> get asFailure => this as ResultFailure<T>;

  ResultNone<T> get asNone => this as ResultNone<T>;

  T get data => asData.data;

  String get failMessage => asFailure.message;
}
