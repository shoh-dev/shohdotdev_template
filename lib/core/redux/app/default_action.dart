import 'package:async_redux/async_redux.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

abstract class DefaultAction extends ReduxAction<AppState> {
  IpState get ipState => state.ipState;

  @override
  Object? wrapError(Object error, StackTrace stackTrace) {
    if (error is ResultFailure) {
      return UserException(error.message,
          errorText: errorTitle, ifOpenDialog: showErrorDialog);
    } else {
      final failure = const HandleException().exception(error, stackTrace);
      return UserException(failure.message,
          errorText: errorTitle, ifOpenDialog: showErrorDialog);
    }
  }

  String? get errorTitle => null;

  bool get showErrorDialog => true;
}

// mixin WithWaitState implements ReduxAction<AppState> {
//   @override
//   void before() => dispatch(WaitAction.add(this));
//   @override
//   void after() => dispatch(WaitAction.remove(this));
// }
