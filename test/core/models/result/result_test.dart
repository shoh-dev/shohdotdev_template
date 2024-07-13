import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';

void main() {
  group(
    "Test Result model",
    () {
      //test if Result is loading
      test(
        "Test if Result is loading",
        () {
          const loadingResult = Result.loading();
          expect(loadingResult, isA<ResultLoading>());
        },
      );

      //test if Result is none
      test(
        "Test if Result is none",
        () {
          const noneResult = Result.none();
          expect(noneResult, isA<ResultNone>());
        },
      );

      //test if Result<String> is data String
      test(
        "Test if Result<String> is data String",
        () {
          const dataResult = Result.data("data");
          expect(dataResult, isA<ResultData<String>>());
        },
      );

      //test if Result<String>.data is "data"
      test(
        "Test if ResultData is 'data'",
        () {
          const dataResult = ResultData("data");
          expect(dataResult.data, "data");
        },
      );

      //test if Result<String> is failure
      test(
        "Test if Result is failure",
        () {
          const failureResult = Result.failure("message");
          expect(failureResult, isA<ResultFailure>());
        },
      );

      //test if Result<String>.failure is "error"
      test(
        "Test if ResultFailure is 'error'",
        () {
          const failureResult = ResultFailure("error");
          expect(failureResult.message, "error");
        },
      );
    },
  );
}
