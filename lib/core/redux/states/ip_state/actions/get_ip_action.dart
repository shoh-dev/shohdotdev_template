import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/core/redux/app/default_action.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class GetIpAction extends DefaultAction<void> {
  GetIpAction({super.setLoadingState});

  @override
  Future<Result<void>> disposeState() async {
    dispatcher(const UpdateIpStateAction(ip: Result.none()));
    return const Result.none();
  }

  @override
  Future<void> onLoading() async {
    if (setLoadingState) {
      dispatcher(const UpdateIpStateAction(ip: Result.loading()));
    }
  }

  @override
  Future<Result<void>> onFetch(AppState state, NextDispatcher next) async {
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

  @override
  Future<Result<void>> payload(AppState state, NextDispatcher next) async {
    await onLoading();

    return await onFetch(state, next);
  }
}
