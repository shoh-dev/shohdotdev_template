import 'package:shohdotdev_template/core/models/result/result.dart';

extension ResultHelpers<T> on Result<T> {
  bool get isLoading => this is ResultLoading<T>;

  bool get isNone => this is ResultNone<T>;

  bool get isData => this is ResultData<T>;

  bool get isFailure => this is ResultFailure<T>;

  bool get isRunning => this is ResultRunning<T>;

  ResultData<T> get asData => this as ResultData<T>;

  ResultFailure<T> get asFailure => this as ResultFailure<T>;

  ResultNone<T> get asNone => this as ResultNone<T>;

  ResultLoading<T> get asLoading => this as ResultLoading<T>;

  ResultRunning<T> get asRunning => this as ResultRunning<T>;

  T get data => asData.data;

  String get failMessage => asFailure.message;

  Result<Vm> mapToVm<Vm>(Vm Function(T data) onData) {
    if (isNone) {
      return const Result.none();
    } else if (isData) {
      return Result.data(onData(data));
    } else if (isFailure) {
      return Result.failure(failMessage);
    } else {
      return const Result.loading();
    }
  }
}
