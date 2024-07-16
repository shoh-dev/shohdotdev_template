import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' hide Store;
import 'package:shohdotdev_template/core/models/result/result.dart';
import 'package:shohdotdev_template/core/redux/redux.dart';
import 'package:nil/nil.dart';
import 'package:shohdotdev_template/ui/loading/loading.widget.dart';

abstract class StateConnector<T> extends HookWidget {
  const StateConnector({super.key});

  ///[failureBuilder] is called when the view model is a [ResultFailure<T>]
  ///
  ///default implementation returns null which results to [Center(child: Text(vm.failMessage))]
  Widget? failureBuilder(BuildContext context, ResultFailure<T> vm) => null;

  ///[loadingActions] is a list of actions that shows loading indicator while loading
  List<Object> get loadingActions => [];

  ///[noneBuilder] is called when the view model is a [ResultNone<T>]
  ///
  ///default implementation returns null which results to [nil]
  Widget? noneBuilder(BuildContext context) => null;

  bool isNoneWhen(T vm) => false;

  ///[dataBuilder] is called when the view model is a [ResultData<T>]
  ///
  ///default implementation returns null which results to [nil]
  Widget? dataBuilder(BuildContext context, T vm) => null;

  //todo: write description
  Widget? loadingBuilder(BuildContext context) => null;

  ///[customBuilder] is called when the view model is a [Result<T>]
  ///
  ///can make custom builders for each state manually
  Widget? customBuilder(BuildContext context, T vm) => null;

  ///[onInit] is called when the widget is built for the first time
  void onInit(T vm) {}

  ///[onDispose] is called when the widget is disposed
  // void onDispose(Store<AppState> store) {}

  ///[selector] is a function that takes the current state and returns the view model as a [Result<T>]
  T selector(AppState state);

  @override
  Widget build(BuildContext context) {
    final vm = useAppState<T>(selector);

    final builder0 = customBuilder(context, vm);

    if (builder0 != null) {
      return builder0;
    }

    final isWaiting = context.isWaiting(loadingActions);
    if (isWaiting) {
      final loadingBuilder0 = loadingBuilder(context);
      if (loadingBuilder0 != null) {
        return loadingBuilder0;
      }
      return const LoadingWidget();
    }

    final isFailed = context.isFailed(loadingActions);
    if (isFailed) {
      final errorText = context.exceptionFor(loadingActions)?.message;
      final failureBuilder0 =
          failureBuilder(context, ResultFailure<T>(errorText ?? "Failed"));
      if (failureBuilder0 != null) {
        return failureBuilder0;
      }
      return Center(
          child: Text(ResultFailure<T>(errorText ?? "Failed").message));
    }

    if (isNoneWhen(vm)) {
      final noneBuilder0 = noneBuilder(context);
      if (noneBuilder0 != null) {
        return noneBuilder0;
      } else {
        return nil;
      }
    }

    final dataBuilder0 = dataBuilder(context, vm);

    if (dataBuilder0 != null) {
      return dataBuilder0;
    }

    return nil;
  }
}
