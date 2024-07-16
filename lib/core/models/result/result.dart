import 'package:freezed_annotation/freezed_annotation.dart';

export 'handle_exception.dart';
export 'vm.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  const factory Result.data(T data) = ResultData<T>;

  const factory Result.none() = ResultNone<T>;

  const factory Result.failure(String message,
      {String? code, StackTrace? stackTrace}) = ResultFailure<T>;
}
