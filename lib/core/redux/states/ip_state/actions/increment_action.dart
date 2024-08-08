import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/core/redux/app/default_action.dart';
import 'package:shohdotdev_template/core/redux/states.dart';
import 'package:shohdotdev_template/utils/utils.dart';

class IncrementAction extends DefaultAction<void> {
  IncrementAction({super.setLoadingState});

  @override
  Future<Result<void>> onFetch(AppState state, NextDispatcher next) async {
    next(UpdateIpStateAction(
        count: Result.data(
            state.ipState.count.isData ? state.ipState.count.data + 1 : 1)));
    return const Result.none();
  }

  @override
  Future<Result<void>> payload(AppState state, NextDispatcher next) async {
    await onLoading();

    return await onFetch(state, next);
  }
}
