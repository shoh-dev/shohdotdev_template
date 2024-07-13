import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shohdotdev_template/core/models/failure/failure.dart';

part 'redux_state.freezed.dart';

@freezed
abstract class ReduxState<T> with _$ReduxState {
  const factory ReduxState.initial() = ReduxStateInitial;

  const factory ReduxState.loading() = ReduxStateLoading;

  const factory ReduxState.success(T data) = ReduxStateSuccess<T>;

  const factory ReduxState.failure(Failure failure) = ReduxStateFailure;

  ///In case you want to return a void
  const factory ReduxState.none() = ReduxStateVoid<Never>;
}
