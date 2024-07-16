import 'package:async_redux/async_redux.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

final appStore = Store<AppState>(
  initialState: AppState.initial(),
  // actionObservers: [Log.printer(formatter: Log.verySimpleFormatter)],
  // modelObserver: DefaultModelObserver(),
);
