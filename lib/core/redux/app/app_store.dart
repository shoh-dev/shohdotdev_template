import 'package:shohdotdev_template/core/redux/app/reducer.dart';
import 'package:shohdotdev_template/core/redux/states.dart';
import 'package:redux/redux.dart';

final appStore = Store<AppState>(
  ReduxAppReducer.reduce,
  initialState: AppState.initial(),
  distinct: true, //todo: test this
  middleware: [
    IpStateMw().call,
  ], //todo: add middlewares
);
