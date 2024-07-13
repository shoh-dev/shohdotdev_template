import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';
import 'package:shohdotdev_template/utils/utils.dart';

import '../../../dummy_data.dart';

void main() {
  group('Test HandleException class', () {
    Result mockNoInternet() {
      try {
        dynamic noInternet = "true";
        if (noInternet == 'true') {
          throw const SocketException("fetch error");
        }
        return const Result.none();
      } catch (e, st) {
        return const HandleException().exception(e, st);
      }
    }

    test(
        "throws SocketException and should return ResultFailure as 'No internet connect' error",
        () {
      expect(mockNoInternet(), isA<ResultFailure>());
    });

    test(
        "throws SocketException and ResultFailure.message should be 'No internet connect' ",
        () {
      expect(mockNoInternet().failMessage, equals(DummyData.noInternetFailure));
    });

    //todo: test other hanlded exceptions
  });
}
