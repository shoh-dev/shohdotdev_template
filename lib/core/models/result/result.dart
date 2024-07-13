import 'package:freezed_annotation/freezed_annotation.dart';

export 'handle_exception.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  const factory Result.loading() = ResultLoading<T>;

  const factory Result.data(T data) = ResultData<T>;

  ///can use to return none or as initial data
  const factory Result.none() = ResultNone<T>;

  const factory Result.failure(
    String message, {
    String? code,
    StackTrace? stackTrace,
  }) = ResultFailure<T>;
}
