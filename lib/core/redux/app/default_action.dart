import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/core/redux/app/app_state.dart';
import 'package:shohdotdev_template/core/redux/app/app_store.dart';
import 'package:shohdotdev_template/ui/loading/loading.helper.dart';

abstract class DefaultAction<T> {
  Future<Result<T>> payload(AppState state, NextDispatcher next);

  Future<Result<T>> dispatch() {
    return appStore.dispatch(this);
  }

  Future<Result<T>> dispatchWithIndocator() async {
    final cancel = showLoading();
    final result = await appStore.dispatch(this);
    cancel();
    return result;
  }
}
