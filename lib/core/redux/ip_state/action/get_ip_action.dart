import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/redux/app/default_action.dart';
import 'package:shohdotdev_template/core/redux/app/models/redux_state.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class GetIpAction extends DefaultAction<void> {
  @override
  Future<ReduxStateVoid> payload(AppState state, NextDispatcher next) async {
    next(const UpdateIpStateAction(ip: ReduxStateLoading()));

    final result = await Injection.ipService.getIpAddress().run();
    return result.fold(
      (e) {
        next(UpdateIpStateAction(ip: ReduxState.failure(e)));
        return const ReduxStateVoid();
      },
      (ip) {
        next(UpdateIpStateAction(ip: ReduxStateSuccess(ip.data)));
        return const ReduxStateVoid();
      },
    );
  }
}
