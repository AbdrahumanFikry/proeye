import 'dart:async';

import 'package:get/get.dart';
import 'dart:collection' as collections;

import 'package:pro_eye/app/utilities/appUtil.dart';

mixin BusyMixin {
  final _disposeSubs = <StreamSubscription>{};
  void addStreamSub(StreamSubscription s) {
    _disposeSubs.add(s);
  }

  Future<void> closeSubs() async {
    for (var item in _disposeSubs) {
      await item.cancel();
    }
    _disposeSubs.clear();
  }

  final isBusy = false.obs;
  final errorMessage = Rx<String>();
  bool get hasError =>
      errorMessage.value != null && errorMessage.value.isNotEmpty;

  void startBusy() {
    isBusy(true);
    errorMessage.nil();
  }

  void endBusySuccess() {
    isBusy(false);
    errorMessage.nil();
  }

  void endBusyError(Object error, {bool showDialog}) {
    isBusy(false);
    String message = error is String ? error : error?.toString();
    errorMessage(message);
    if (showDialog == true) {
      AppUtil.showAlertDialog(body: message);
    }
  }
}
