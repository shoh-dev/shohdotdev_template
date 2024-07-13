import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shohdotdev_template/core/models/failure/failure.dart';

part 'redux_state.freezed.dart';

@freezed
sealed class ReduxState<T> with _$ReduxState {
  const factory ReduxState.initial() = ReduxStateInitial<T>;

  const factory ReduxState.loading() = ReduxStateLoading<T>;

  const factory ReduxState.success(T data) = ReduxStateSuccess<T>;

  const factory ReduxState.failure(Failure failure) = ReduxStateFailure<T>;
}
