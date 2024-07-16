import 'package:shohdotdev_template/core/redux/app/default_action.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class IncrementAction extends DefaultAction {
  @override
  AppState reduce() {
    return state.copyWith(ipState: ipState.copyWith(test: ipState.test + 1));
  }
}
