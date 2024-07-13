import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';

void main() {
  group(
    "State model test",
    () {
      test(
        "State.none should be type of StateVoid",
        () {
          const none = State.none();
          expect(none, isA<State>());
        },
      );

      test(
        "State.loading should be type of StateLoading",
        () {
          const loading = State.loading();
          expect(loading, isA<State>());
        },
      );

      test(
        "State.success should be type of StateSuccess",
        () {
          const success = State.success("data");
          expect(success, isA<State>());
        },
      );

      test(
        "State.success data should be equal to 'data'",
        () {
          const success = State.success("data");
          expect((success as StateSuccess).data, equals("data"));
        },
      );

      test(
        "State.failure should be type of StateFailure",
        () {
          const failure = State.failure("error");
          expect(failure, isA<State>());
        },
      );

      test(
        "State.failure failure message should be 'error'",
        () {
          const failure = State.failure("error");
          expect((failure as StateFailure).message, equals("error"));
        },
      );
    },
  );
}
