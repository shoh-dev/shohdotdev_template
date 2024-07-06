import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:shohdotdev_template/ui/loading/loading.widget.dart';

CancelFunc showLoading({bool barrierDismissible = false}) {
  return BotToast.showCustomLoading(
    toastBuilder: (cancelFunc) {
      return const LoadingWidget();
    },
    clickClose: barrierDismissible,
    backgroundColor: Colors.transparent,
    allowClick: false,
    backButtonBehavior: BackButtonBehavior.ignore,
  );
}

extension FutureHelper<T> on FutureOr<T> {
  FutureOr<T> loading() async {
    CancelFunc? cancel;
    cancel = showLoading();
    try {
      T result = (await this);
      cancel.call();
      return result;
    } catch (e) {
      cancel.call();
      rethrow;
    }
  }
}
