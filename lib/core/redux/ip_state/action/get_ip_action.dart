import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/core/redux/app/default_action.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class GetIpAction extends DefaultAction<void> {
  @override
  Future<Result<void>> payload(AppState state, NextDispatcher next) async {
    next(const UpdateIpStateAction(ip: Result.loading()));

    final result = await Injection.ipService.getIpAddress().run();
    return result.fold(
      (e) {
        next(UpdateIpStateAction(ip: e));
        return const Result.none();
      },
      (ip) {
        next(UpdateIpStateAction(ip: ip));
        return const Result.none();
      },
    );
  }
}
