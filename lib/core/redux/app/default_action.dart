import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/core/redux/app/app_state.dart';
import 'package:shohdotdev_template/core/redux/app/app_store.dart';
import 'package:shohdotdev_template/ui/loading/loading.helper.dart';

Map<Type, DefaultAction> _runningActions = {};

abstract class DefaultAction<T> {
  final bool setLoadingState;

  DefaultAction({
    /// Set to true to show loading indicator
    this.setLoadingState = false,
  });

  final dispatcher = appStore.dispatch;

  static bool isRunning(Type type) => _runningActions.containsKey(type);

  Future<void> onLoading() async {}

  Future<Result<T>> onFetch(AppState state, NextDispatcher next);

  Future<Result<T>> payload(AppState state, NextDispatcher next);

  Future<Result<T>> dispatch() async {
    if (_runningActions.containsKey(runtimeType)) {
      return Future.value(const Result.running());
    }
    _runningActions[runtimeType] = this;
    final result = await dispatcher(this);
    _runningActions.remove(runtimeType);
    return result;
  }

  Future<Result<T>> dispatchWithIndocator() async {
    final cancel = showLoadingDialog();
    final result = await dispatch();
    cancel();
    return result;
  }
}
