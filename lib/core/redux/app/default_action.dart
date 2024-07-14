import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/core/redux/app/app_state.dart';
import 'package:shohdotdev_template/core/redux/app/app_store.dart';
import 'package:shohdotdev_template/ui/loading/loading.helper.dart';

abstract class DefaultAction<T> {
  final bool setLoadingState;

  DefaultAction({
    /// Set to true to show loading indicator
    this.setLoadingState = false,
  });

  final dispatcher = appStore.dispatch;

  Future<Result<T>> disposeState();

  Future<void> onLoading();

  Future<Result<T>> onFetch(AppState state, NextDispatcher next);

  Future<Result<T>> payload(AppState state, NextDispatcher next);

  Future<Result<T>> dispatch() {
    return dispatcher(this);
  }

  Future<Result<T>> dispatchWithIndocator() async {
    final cancel = showLoadingDialog();
    final result = await dispatch();
    cancel();
    return result;
  }
}
