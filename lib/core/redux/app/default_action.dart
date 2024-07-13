import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/redux/app/app_state.dart';
import 'package:shohdotdev_template/core/redux/app/app_store.dart';
import 'package:shohdotdev_template/core/redux/app/models/redux_state.dart';

abstract class DefaultAction<T> {
  Future<ReduxState<T>> payload(AppState state, NextDispatcher next);

  Future<ReduxState<T>> call() {
    return appStore.dispatch(this);
  }
}
