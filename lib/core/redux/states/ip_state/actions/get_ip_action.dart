import 'dart:async';
import 'package:async_redux/async_redux.dart';
import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/redux/app/default_action.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class GetIpAction extends DefaultAction {
  @override
  Future<AppState> reduce() async {
    final result = await Injection.ipService.getIpAddress().run();
    throw UserException("Failed to get IP address", errorText: errorTitle);
    return result.fold(
      (e) => throw e,
      (ip) => state.copyWith(ipState: ipState.copyWith(ip: ip.data)),
    );
  }

  @override
  String? get errorTitle => "Failed to get IP address";
}
