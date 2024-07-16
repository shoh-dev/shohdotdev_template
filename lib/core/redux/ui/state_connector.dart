import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';
import 'package:shohdotdev_template/core/redux/states.dart';
import 'package:nil/nil.dart';
import 'package:shohdotdev_template/ui/loading/loading.widget.dart';
import 'package:shohdotdev_template/utils/utils.dart';

abstract class StateConnector<T> extends StatelessWidget {
  const StateConnector({super.key});

  ///[failureBuilder] is called when the view model is a [ResultFailure<T>]
  ///
  ///default implementation returns null which results to [Center(child: Text(vm.failMessage))]
  Widget? failureBuilder(BuildContext context, ResultFailure<T> vm) => null;

  ///[loadingBuilder] is called when the view model is a [ResultLoading<T>]
  ///
  ///default implementation returns null which results to [LoadingWidget]
  ///
  ///can switch usign [action(showLoadingIndicator: true or false)]
  Widget? loadingBuilder(BuildContext context, ResultLoading<T> vm) => null;

  ///[noneBuilder] is called when the view model is a [ResultNone<T>]
  ///
  ///default implementation returns null which results to [nil]
  Widget? noneBuilder(BuildContext context, ResultNone<T> vm) => null;

  ///[dataBuilder] is called when the view model is a [ResultData<T>]
  ///
  ///default implementation returns null which results to [nil]
  Widget? dataBuilder(BuildContext context, ResultData<T> vm) => null;

  ///[customBuilder] is called when the view model is a [Result<T>]
  ///
  ///can make custom builders for each state manually
  Widget? customBuilder(BuildContext context, Result<T> vm) => null;

  ///[onInit] is called when the widget is built for the first time
  void onInit(Result<T> vm) {}

  ///[onDispose] is called when the widget is disposed
  void onDispose(Store<AppState> store) {}

  ///[selector] is a function that takes the current state and returns the view model as a [Result<T>]
  Result<T> selector(AppState state);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Result<T>>(
      converter: (store) => selector(store.state),
      onInitialBuild: (vm) => onInit(vm),
      onDispose: (store) => onDispose(store),
      distinct: true,
      builder: (context, vm) {
        final builder0 = customBuilder(context, vm);

        if (builder0 != null) {
          return builder0;
        }
        if (vm.isLoading) {
          final loadingBuilder0 = loadingBuilder(context, vm.asLoading);
          if (loadingBuilder0 != null) {
            return loadingBuilder0;
          }
          return const LoadingWidget();
        }
        if (vm.isNone) {
          final noneBuilder0 = noneBuilder(context, vm.asNone);
          if (noneBuilder0 != null) {
            return noneBuilder0;
          }
          return nil;
        }
        if (vm.isFailure) {
          final failureBuilder0 = failureBuilder(context, vm.asFailure);
          if (failureBuilder0 != null) {
            return failureBuilder0;
          }
          return Center(child: Text(vm.failMessage));
        }

        final dataBuilder0 = dataBuilder(context, vm.asData);

        if (dataBuilder0 != null) {
          return dataBuilder0;
        }

        return nil;
      },
    );
  }
}
