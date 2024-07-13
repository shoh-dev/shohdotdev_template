import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class IpStateMw extends MiddlewareClass<AppState> {
  @override
  dynamic call(Store<AppState> store, dynamic action, NextDispatcher next) {
    return switch (action) {
      (GetIpAction _) => action.payload(store.state, next),
      _ => next(action),
    };
  }
}
