import 'package:shohdotdev_template/core/models/result/result.dart';

extension ResultHelpers<T> on Result<T> {
  bool get isLoading => this is ResultLoading;

  bool get isNone => this is ResultNone;

  bool get isData => this is ResultData<T>;

  bool get isError => this is ResultFailure;

  ResultData<T> get asData => this as ResultData<T>;

  ResultFailure get asFailure => this as ResultFailure;

  ResultNone get asNone => this as ResultNone;

  ResultLoading get asLoading => this as ResultLoading;

  T get data => asData.data;

  String get failMessage => asFailure.message;
}
