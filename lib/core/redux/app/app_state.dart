import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required IpState ipState,
  }) = _AppState;

  factory AppState.initial() => AppState(
        ipState: IpState.initial(),
      );
}
