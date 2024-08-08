import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/redux/states/ip_state/model/model.dart';

class IpStateReducer {
  IpState _update(IpState state, UpdateIpStateAction action) {
    return state.copyWith(
      ip: action.ip ?? state.ip,
      count: action.count ?? state.count,
    );
  }

  late Reducer<IpState> reducer = combineReducers<IpState>([
    TypedReducer<IpState, UpdateIpStateAction>(_update).call,
  ]);
}
