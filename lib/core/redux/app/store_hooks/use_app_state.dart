import 'package:flutter_hooks_async_redux/flutter_hooks_async_redux.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

T useAppState<T>(T Function(AppState state) converter,
        {bool distinct = true}) =>
    useSelector<AppState, T>(converter, distinct: distinct);
