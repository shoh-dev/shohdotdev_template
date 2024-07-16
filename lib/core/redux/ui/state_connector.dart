import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';
import 'package:shohdotdev_template/core/redux/redux.dart';
import 'package:nil/nil.dart';
import 'package:shohdotdev_template/ui/loading/loading.widget.dart';
import 'package:provider_for_redux/provider_for_redux.dart';

abstract class StateConnector<T> extends StatelessWidget {
  const StateConnector({super.key});

  ///[noneBuilder] is called when the view model is a [ResultNone<T>]
  ///
  ///default implementation returns null which results to [nil]
  Widget? noneBuilder(BuildContext context) => null;

  ///[dataBuilder] is called when the view model is a [ResultData<T>]
  ///
  ///default implementation returns null which results to [nil]
  Widget? dataBuilder(BuildContext context, T vm) => null;

  //todo: write description
  Widget? loadingBuilder(BuildContext context) => null;

  ///[builder] is called when the view model is a [Result<T>]
  ///
  ///can make custom builders for each state manually
  Widget? builder(BuildContext context, T vm) => null;

  ///[selector] is a function that takes the current state and returns the view model as a [Result<T>]
  T selector(AppState state);

  List<Object> get actions => [];

  @override
  Widget build(BuildContext context) {
    return ReduxSelector<AppState, T?>(
      selector: (context, state) => selector(state),
      builder: (context, store, state, dispatch, vm, child) {
        if (vm == null) {
          final noneBuilder0 = noneBuilder(context);
          if (noneBuilder0 != null) {
            return noneBuilder0;
          }
          return nil;
        }

        final builder0 = builder(context, vm);
        if (builder0 != null) {
          return builder0;
        }

        final dataBuilder0 = dataBuilder(context, vm);
        if (dataBuilder0 != null) {
          return dataBuilder0;
        }

        return nil;
      },
    );
  }
}
