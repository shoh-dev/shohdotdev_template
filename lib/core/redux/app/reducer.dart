import 'package:shohdotdev_template/core/redux/states.dart';

class ReduxAppReducer {
  static AppState reduce(AppState state, dynamic action) {
    final ipReducer = IpStateReducer();

    final newState = state.copyWith(
      ipState: ipReducer.reducer(state.ipState, action),
    );

    return newState;
  }
}
