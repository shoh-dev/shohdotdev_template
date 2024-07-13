import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/redux/app/app_state.dart';
import 'package:shohdotdev_template/core/redux/app/app_store.dart';
import 'package:shohdotdev_template/core/redux/app/models/redux_state.dart';
import 'package:shohdotdev_template/ui/loading/loading.helper.dart';

abstract class DefaultAction<T> {
  Future<ReduxState<T>> payload(AppState state, NextDispatcher next);

  Future<ReduxState<T>> dispatch() {
    return appStore.dispatch(this);
  }

  Future<ReduxState<T>> dispatchWithIndocator() async {
    final cancel = showLoading();
    final result = await appStore.dispatch(this);
    cancel();
    return result;
  }
}
